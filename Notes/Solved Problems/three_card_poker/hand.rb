require './card'
class Hand
  include Comparable

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def to_s
    @cards.map{|card| "#{card}" }.join(', ')
  end

  def high_card
    @cards.max
  end

  def has_pair?
    card_values.uniq.length == 2
  end

  def is_flush?
    @cards.map{|card| card.suit }.uniq.length == 1
  end

  def is_straight?(straight_flush_check = false)
    !has_pair? && 
    (!is_flush? || straight_flush_check) && 
    high_card.value - @cards.min.value == 2
  end

  def three_of_a_kind?
    card_values.uniq.length == 1
  end

  def straight_flush?
    is_flush? && is_straight?(true)
  end

  def <=>(other_hand)
    value <=> other_hand.value
  end

  def value
    if straight_flush?
      100000 * high_card.value
    elsif three_of_a_kind?
      10000 * high_card.value
    elsif is_straight?
      1000 * high_card.value
    elsif is_flush?
      100 * value_as_high_card_hand
    elsif has_pair?
      10 * paired_value
    else
      value_as_high_card_hand
    end
  end

  private

  def card_values
    @cards.map{|card| card.value }
  end

  def paired_value
    card_values[0] == card_values[1] ? card_values[0] : card_values[2]
  end

  def middle_card_value
    @cards.sort[1].value
  end

  def low_card_value
    @cards.sort[2].value
  end

  def value_as_high_card_hand
    high_card.value + 0.1 * middle_card_value + 0.01 * low_card_value
  end
end