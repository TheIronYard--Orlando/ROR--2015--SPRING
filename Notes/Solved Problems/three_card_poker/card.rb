require '../to_english'
class Card
  include Comparable

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{string_value} of #{@suit}"
  end

  def string_value
    @value.respond_to?(:to_english) ? @value.to_english : @value
  end

  def <=>(other_card)
    value <=> other_card.value
  end

  def value
    case @value
    when Fixnum
      @value
    when :jack
      11
    when :queen
      12
    when :king
      13
    when :ace
      14
    end
  end

end