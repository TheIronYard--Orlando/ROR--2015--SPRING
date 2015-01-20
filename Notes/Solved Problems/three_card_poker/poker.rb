require './hand'
require './deck'
class Poker

  attr_reader :deck, :player, :dealer, :bet

  def initialize(bet, player, dealer)
    @deck = Deck.new
    @player = player
    @dealer = dealer
    @bet = bet
    show_player_hand
  end

  def show_player_hand
    puts "Player has #{@player}"
  end
end