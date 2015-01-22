require_relative 'card'
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

  def method_missing(method_name)
    if method_name =~ /(.*)_of_(.*)/
      @cards.detect do |card| 
        [card.string_value, card.face_value.to_s.downcase].include?($1) && 
        card.suit.to_s == $2
      end
    else
      super
    end
  end
end