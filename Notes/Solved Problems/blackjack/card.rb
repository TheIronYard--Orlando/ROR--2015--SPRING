class Card

  attr_reader :suit #if I say card.suit, give me the card's @suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def value
    if @value.is_a?(Fixnum)
      @value
    elsif @value == :ace
      11
    else
      10
    end
  end

  def display
    "#{@value.to_s.capitalize} of #{suit.to_s.capitalize}"
  end
end
