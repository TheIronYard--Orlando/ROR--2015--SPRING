# the game of blackjack:

# a deck of playing cards has 4 suits, hearts/diamonds/clubs/spades
# for each suit, there is a numbered card for each number 2-10
# there is also an ace, a king, a queen, and a jack
# so a card has a suit and a value
# at the start of a card game the deck should be shuffled into random order
# when a card is dealt from the deck, it's removed from the deck and ends up in a player's/dealer's hand

# a hand has cards in it
# the hand belongs to a player
# the hand has a value based on its cards

# using one standard deck of playing cards,
# one player is given two cards by the dealer
# the dealer gets two cards, one of which stays face down
# the player's cards are all face up

# once the 1st pair of cards has been dealt to the player (and dealer),
# everyone checks for blackjack, which is a pair of cards worth 21
# (numbered cards are worth their number, face cards = 10, ace = 11)
# a player who has blackjack when the dealer does not wins
# a player who does not have blackjack when the dealer does, loses
# if both dealer and player have blackjack, it's a push (tie)

# assuming dealer does not have blackjack, play continues with
# a player's decision options are as follows:
# * hit - receive an additional card from dealer
# * stand - player stops receiving cards and play passes to dealer

# a player may hit as many times as desired so long as the value of the hand does not exceed 21
# the value of the hand is the sum of the values of the cards
# if the value of a hand exceeds 21, the hand busts (loses)

# once a player stands (or busts), the dealer draws according to rules:
# * the dealer must hit until the hand is valued at 17 or greater
# * at that point the dealer must stand
# once the dealer stands or busts, all bets are settled and the round is over
require 'minitest/autorun'
require './blackjack'

class TestCard < MiniTest::Unit::TestCase

  def setup
    @card = Card.new(2, :hearts)
  end

  def test_card_exists
    assert @card
  end

  def test_card_has_suit
    assert_equal :hearts, @card.suit
  end

  def test_card_has_value
    assert_equal 2, @card.value
  end

  def test_face_card_valued_at_10
    card = Card.new(:king, :diamonds)
    assert_equal 10, card.value
  end

  def test_ace_valued_at_11
    ace = Card.new(:ace, :spades)
    assert_equal 11, ace.value
  end

  def test_numbered_card_displays_its_suit_and_value
    assert_equal "2 of Hearts", @card.display
  end

  def test_face_card_displays_suit_and_face_value
    king_of_clubs = Card.new(:king, :clubs)
    assert_equal "King of Clubs", king_of_clubs.display
  end
end

class TestDeck < MiniTest::Unit::TestCase

  def setup
    @deck = Deck.new
  end

  def test_deck_exists
    assert @deck
  end

  def test_deck_has_52_cards
    assert_equal 52, @deck.length
    assert_kind_of Card, @deck[0]
  end

  def test_deck_starts_shuffled
    pass # how could you test this?
  end

  def test_deck_can_deal_cards
    cards = @deck.deal(2)
    assert_kind_of Card, cards[0]
    assert_equal 50, @deck.length
  end
end

class TestBlackjack < MiniTest::Unit::TestCase

  def setup
    @game = Blackjack.new
  end

  def test_game_exists
    assert @game
  end

  def test_game_has_deck_of_cards
    assert @game.deck
  end

  def test_game_has_a_player
    assert @game.player
  end

  def test_game_has_a_dealer
    assert @game.dealer
  end

  def test_player_starts_with_2_cards_from_deck
    assert_equal 2, @game.player.hand.length
  end 
  
  def test_dealer_starts_with_2_cards_from_deck
    assert_equal 2, @game.dealer.hand.length
  end

  def test_game_can_display_player_cards_and_1_of_dealers
    player_display = @game.player.display
    dealer_card = @game.dealer.hand[0]
    assert_equal "#{player_display}.\n Dealer shows #{dealer_card.display}",
                 @game.display
  end
end


class TestPlayer < MiniTest::Unit::TestCase

  def setup
    cards = [ Card.new(8, :spades), Card.new(6, :clubs)]
    @player = Player.new(cards) 
  end

  def test_player_exists
    assert @player
  end

  def test_player_has_hand
    assert @player.hand
  end

  def test_player_hand_holds_cards
    card = Card.new(2, :hearts)
    @player.take card
    assert @player.hand.include? card
  end

  def test_player_hand_has_value
    assert_equal 14, @player.hand_value
  end

  def test_player_displays_hand
    assert_equal "Player has 8 of Spades and 6 of Clubs", @player.display
  end
end