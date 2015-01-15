
require './deck'
require './player'
class Blackjack

  attr_reader :player, :dealer, :winner, :push, :current_player

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
  
  def hit!
    current_player.take(@deck.next_card) 
    check_for_bust
    check_for_winner
  end

  def stand
    @current_player = @dealer
    hit! until @dealer.hand_value >= 17
  end

  private

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

end

