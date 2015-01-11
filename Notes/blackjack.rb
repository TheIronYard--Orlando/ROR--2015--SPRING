class Card

  attr_reader :value, :suit# this is like attr_accessor, but read-only
                    # meaning we can't do something like card.suit = :spades
                    # to *change* a card's suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end

class Deck

end