class Card

  attr_reader :suit # this is like attr_accessor, but read-only
                    # meaning we can't do something like card.suit = :spades
                    # to *change* a card's suit
  def initialize(suit)
    @suit = suit
  end
end