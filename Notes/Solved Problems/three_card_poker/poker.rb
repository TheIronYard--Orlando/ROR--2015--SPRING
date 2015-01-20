require './hand'
require './deck'
class Poker

  attr_reader :deck, :player, :dealer, :bet

  def initialize(bet, player, dealer)
    @deck = Deck.new
    @player = player
    show_player_hand
    @dealer = dealer
    @bet = bet
  end

  def show_player_hand
    puts "Player has #{@player}"
  end
end