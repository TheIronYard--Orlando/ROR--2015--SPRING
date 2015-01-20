require 'minitest/autorun'
require './poker'

# game has deck
# game has player and dealer, each w 3 cards
class PokerTest < MiniTest::Unit::TestCase

  def setup
    @deck = Deck.new
    @player = Hand.new(@deck.deal(3))
    @dealer = Hand.new(@deck.deal(3))
    @game = Poker.new(10, @player, @dealer)
  end
 
  def test_game_has_deck
    assert @game.deck
  end
  #
  def test_game_has_player
    assert @game.player
  end

  def test_game_has_dealer
    assert @game.dealer
  end

  def test_player_has_3_cards
    assert_equal 3, @game.player.cards.length
  end

  def test_dealer_has_3_cards
    assert_equal 3, @game.dealer.cards.length
  end

  def test_game_has_bet
    assert @game.bet
  end

end