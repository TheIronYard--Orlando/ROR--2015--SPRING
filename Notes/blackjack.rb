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

  #attr_reader :cards don't need this anymore with methods using @cards

  def initialize
    @cards = []
    [ :hearts, :diamonds, :clubs, :spades ].each do |suit|
      ((2..10).to_a + [ :jack, :queen, :king, :ace ]).each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def length
    @cards.length
  end

  def [](index)
    @cards[index]
  end
end