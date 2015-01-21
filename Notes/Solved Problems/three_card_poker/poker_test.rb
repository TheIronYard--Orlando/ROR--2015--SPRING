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

  def crap_dealer_hand
    Hand.new([Card.new(:jack, :spades), Card.new(8, :hearts), Card.new(2, :clubs)])
  end

  def queen_high_hand
    Hand.new([Card.new(:queen, :spades), Card.new(8, :hearts), Card.new(2, :clubs)])
  end

  def pair
    Hand.new([Card.new(2, :hearts), Card.new(2, :diamonds), Card.new(3, :spades)])
  end

  def test_game_shows_player_hand #note that I don't need a deck here at all - why?
    player_hand = Hand.new([Card.new(7, :spades), Card.new(9, :clubs), Card.new(4, :hearts)])
    expected_output = "Player has seven of spades, nine of clubs, four of hearts\n"
    assert_output(expected_output) { Poker.new(10, player_hand, crap_dealer_hand) }
  end

  # after showing the player's hand, the player can make a play bet, which is equal to the ante bet
  def test_player_can_make_play_bet
    @game.place_play_bet!
    assert_equal @game.ante_bet, @game.play_bet
  end

  # other option is for player to fold, in which case the game is over and player loses ante bet
  def test_player_loses_by_folding
    assert_output("Player lost 10\n") { @game.fold! }
  end

  # If the dealer does not have Queen high or better, the ante bet is paid even money and the play bet is returned.
  def test_ante_bet_pays_off_if_dealer_worse_than_queen_high
    game = Poker.new(10, @player, crap_dealer_hand)
    expected_output = "SHOWDOWN! Dealer has jack of spades, eight of hearts, two of clubs\n" +
                      "You win $20 on the ante bet and $10 on the play bet.\n"
    assert_output(expected_output) { game.place_play_bet! }
  end

  # If the dealer does have Queen high or better & the player's hand beats the dealer's hand,
  # the ante bet and play bet are paid even money.
  def test_both_bets_pay_if_player_beats_dealer
    game = Poker.new(30, pair, queen_high_hand)
    expected_output = "SHOWDOWN! Dealer has queen of spades, eight of hearts, two of clubs\n" +
                      "You win $60 on the ante bet and $60 on the play bet.\n"
    assert_output(expected_output) { game.place_play_bet! }
  end

  # If the dealer does have Queen high or better & the player's hand is equal to the dealer's hand,
  # the player's ante and play bets are returned.
  def test_bets_return_if_player_ties_with_dealer
    dealer_pair = Hand.new([Card.new(2, :spades), Card.new(2, :clubs), Card.new(3, :diamonds)])
    game = Poker.new(20, pair, dealer_pair) 
    expected_output = "SHOWDOWN! Dealer has two of spades, two of clubs, three of diamonds\n" +
                      "You win $20 on the ante bet and $20 on the play bet.\n"
    assert_output(expected_output) { game.place_play_bet! }
  end

  # If the dealer does have Queen high or better & the player's hand is worse than the dealer's hand,
  # the ante and play bet are lost.
  def test_bets_lost_if_dealer_with_queen_high_beats_player
    game = Poker.new(20, queen_high_hand, pair)
    expected_output = "SHOWDOWN! Dealer has two of hearts, two of diamonds, three of spades\n" +
                      "You lose!\n"
    assert_output(expected_output) { game.place_play_bet! }
  end
end