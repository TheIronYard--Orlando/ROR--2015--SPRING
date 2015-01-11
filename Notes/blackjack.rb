class Card

  attr_reader :suit # I got read of the attr_reader for value
                    # bc I need to define a method
                    # to account for face cards

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
end

class Deck

  #attr_reader :cards don't need this anymore with methods using @cards

  def initialize
    @cards = [ :hearts, :diamonds, :clubs, :spades ].map do |suit|
      ((2..10).to_a + [ :jack, :queen, :king, :ace ]).map do |value|
        Card.new(value, suit)
      end
    end.flatten.shuffle
  end

  def length
    @cards.length
  end

  def [](index)
    @cards[index]
  end
end