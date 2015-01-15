class Player

  attr_reader :hand # yes, reader, even though I'll change it during the game

  def initialize(cards = [])
    @hand = cards 
  end

  def take(card)
    @hand << card
  end

  def hand_value
    @hand.inject(0){|sum, card| sum + card.value }
  end

  def display
    "Player has #{card_display}"
  end

  def card_display
    @hand.map{|card| card.display }.join(' and ')
  end

  def has_21?
    hand_value == 21
  end

  def bust?
    hand_value > 21
  end
end