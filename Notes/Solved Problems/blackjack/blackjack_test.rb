# the game of blackjack:


# using one standard deck of playing cards,
# one player is given two cards by the dealer
# the dealer gets two cards, one of which stays face down
# the player's cards are all face up

# once the 1st pair of cards has been dealt to the player (and dealer),
# everyone checks for blackjack, which is a pair of cards worth 21
# a player who has blackjack when the dealer does not wins
# a player who does not have blackjack when the dealer does, loses
# if both dealer and player have blackjack, it's a push (tie)

# assuming dealer does not have blackjack, play continues with
# a player's decision options are as follows:
# * hit - receive an additional card from dealer
# * stand - player stops receiving cards and play passes to dealer

# a player may hit as many times as desired so long as the value of the hand does not exceed 21
# the value of the hand is the sum of the values of the cards

# once a player stands (or busts), the dealer draws according to rules:
# * the dealer must hit until the hand is valued at 17 or greater
# * at that point the dealer must stand
# once the dealer stands or busts, all bets are settled and the round is over
require 'minitest/autorun'
require './blackjack'
require './card_test'
require './player_test'
require './deck_test'

class TestBlackjack < MiniTest::Unit::TestCase

  def setup
    @game = Blackjack.new
  end

  def test_game_has_a_player
    assert @game.player
  end

  def test_game_has_a_dealer
    assert @game.dealer
  end

  def test_player_starts_with_2_cards_from_deck
    assert_equal 2, @game.player.hand.size
  end 
  
  def test_dealer_starts_with_2_cards_from_deck
    assert_equal 2, @game.dealer.hand.size
  end

  def test_game_can_display_player_cards_and_1_of_dealers
    player_display = @game.player.display
    dealer_card = @game.dealer.hand[0]
    assert_equal "#{player_display}.\n Dealer shows #{dealer_card.display}",
                 @game.display
  end

  def test_player_dealt_21_wins_if_dealer_has_less
    deck = Deck.new([ Card.new(10, :clubs), Card.new(:ace, :hearts),
                      Card.new(4, :diamonds), Card.new(7, :spades)])
    game = Blackjack.new(deck)
    assert_equal game.player, game.winner
  end

  def test_player_dealt_21_wins_if_dealer_has_same
    deck = Deck.new([ Card.new(10, :clubs), Card.new(:ace, :hearts),
                      Card.new(10, :diamonds), Card.new(:ace, :spades)])
    game = Blackjack.new(deck)
    assert game.push
  end

  def test_hit_gives_a_card_to_the_player
    @game.hit!
    assert_equal 3, @game.player.hand.size
  end

  def test_dealer_wins_if_player_busts
    deck = Deck.new([ Card.new(10, :clubs), Card.new(:jack, :hearts),
                      Card.new(2, :hearts), Card.new(3, :clubs),
                      Card.new(10, :diamonds)])
    game = Blackjack.new(deck)
    game.hit!
    assert_equal game.dealer, game.winner
  end 

  def test_player_wins_with_21_after_3_cards_if_dealer_has_less
    deck = Deck.new([ Card.new(10, :clubs), Card.new(5, :hearts),
                      Card.new(2, :hearts), Card.new(3, :clubs),
                      Card.new(6, :diamonds)])
    game = Blackjack.new(deck)
    game.hit!
    assert_equal game.player, game.winner
  end

  def test_dealer_gets_cards_until_total_reaches_17
    deck = Deck.new([ Card.new(10, :clubs), Card.new(5, :hearts),
                      Card.new(2, :hearts), Card.new(3, :clubs),
                      Card.new(6, :diamonds), Card.new(2, :clubs),
                      Card.new(4, :spades), Card.new(9, :clubs)])
    game = Blackjack.new(deck)
    game.stand
    assert_equal 5, game.dealer.hand.size
  end

end