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

  def display
    "#{@value.to_s.capitalize} of #{suit.to_s.capitalize}"
  end
end

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

class Blackjack

  attr_reader :deck, :player, :dealer, :winner, :push, :current_player

  def initialize(deck = nil) # this is a bit of a hack so I can get 
                             # non-random cards to the player and dealer
                             # for tests
    @deck = deck || Deck.new
    @player = Player.new(@deck.deal(2))
    @dealer = Player.new(@deck.deal(2)) # this works, but a dealer is not exactly a player
    @current_player = @player
    check_for_winner
  end

  def display
    "#{player.display}.\n Dealer shows #{dealer.hand[0].display}"
  end
                 
  def check_for_winner
    if current_player.has_21? 
      if other_player.has_21?
        @push = true
      else
        @winner = current_player
      end
    end
  end

  def other_player
    current_player == @player ? @dealer : @player
  end

  def check_for_bust
    @winner = other_player if current_player.bust?
  end

  def hit!
    current_player.take(@deck.next_card) 
    check_for_bust
    check_for_winner
  end

  def stand
    @current_player = @dealer
    hit! until @dealer.hand_value >= 17
  end
end

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