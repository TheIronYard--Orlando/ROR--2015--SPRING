require './card'
class Deck

  def initialize(cards = nil) # hack for same reason as in Blackjack#initialize
    @cards = cards || [ :hearts, :diamonds, :clubs, :spades ].map do |suit|
      ((2..10).to_a + [ :jack, :queen, :king, :ace ]).map do |value|
        Card.new(value, suit)
      end
    end.flatten.shuffle
  end

  def size
    @cards.length
  end

  def [](index)
    @cards[index]
  end

  def deal(n)
    @cards.shift(n)
  end

  def next_card
    @cards.shift
  end
end