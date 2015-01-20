require './card'
class Deck

  def initialize
    @cards = [ :hearts, :clubs, :spades, :diamonds ].map do |suit|
      [2,3,4,5,6,7,8,9,10,:jack,:queen,:king, :ace].map do |value|
        Card.new(value, suit)
      end
    end.flatten.shuffle
  end

  def deal(n)
    @cards.shift(n)
  end
end