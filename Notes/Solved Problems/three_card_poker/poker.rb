require './hand'
require './deck'
class Poker

  attr_reader :deck, :player, :dealer, :ante_bet, :play_bet

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

  def place_play_bet!
    @play_bet = @ante_bet
    showdown = "SHOWDOWN! Dealer has #{@dealer}\n"
    if @dealer.less_than_queen_high? #this method had to be added in hand_test.rb and hand.rb bc I needed it here
      puts "#{showdown}You win $#{@ante_bet * 2} on the ante bet and $#{@play_bet} on the play bet."
    else
      if @player > @dealer
        puts "#{showdown}You win $#{@ante_bet * 2} on the ante bet and $#{@play_bet * 2} on the play bet."
      elsif @player == @dealer
        puts "#{showdown}You win $#{@ante_bet} on the ante bet and $#{@play_bet} on the play bet."
      else
        puts "#{showdown}You lose!"
      end
    end
  end

  def fold!
    puts "Player lost #{@ante_bet}"
  end
end