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

  def test_game_has_ante_bet
    assert @game.ante_bet
  end

  def test_game_shows_player_hand #note that I don't need a deck here at all - why?
    player_hand = Hand.new([Card.new(7, :spades), Card.new(9, :clubs), Card.new(4, :hearts)])
    dealer_hand = Hand.new([Card.new(:jack, :spades), Card.new(8, :hearts), Card.new(2, :clubs)])
    expected_output = "Player has seven of spades, nine of clubs, four of hearts\n"
    assert_output(expected_output) { Poker.new(10, player_hand, dealer_hand) }
  end

  # after showing the player's hand, the player can make a play bet, which is equal to the ante bet
  def test_player_can_make_play_bet
    @game.place_play_bet!
    assert_equal @game.ante_bet, @game.play_bet
  end
end