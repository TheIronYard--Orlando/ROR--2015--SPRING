require './hand'
require './deck'
class Poker

  attr_reader :deck, :player, :dealer, :ante_bet

  def initialize(ante_bet, player, dealer)
    @deck = Deck.new
    @player = player
    show_player_hand
    @dealer = dealer
    @ante_bet = ante_bet
  end

  def show_player_hand
    puts "Player has #{@player}"
  end
end