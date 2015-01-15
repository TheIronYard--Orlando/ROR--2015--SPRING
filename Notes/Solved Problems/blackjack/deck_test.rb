# a deck of playing cards has 4 suits, hearts/diamonds/clubs/spades
# for each suit, there is a numbered card for each number 2-10
# there is also an ace, a king, a queen, and a jack

# at the start of a card game the deck should be shuffled into random order
# when a card is dealt from the deck, it's removed from the deck and ends up in a player's/dealer's hand
require 'minitest/autorun'
require './deck'
class TestDeck < MiniTest::Unit::TestCase

  def setup
    @deck = Deck.new
  end

  def test_deck_has_52_cards
    assert_equal 52, @deck.size
    assert_kind_of Card, @deck[0]
  end

  def test_deck_starts_shuffled
    pass # how could you test this?
  end

  def test_deck_can_deal_cards
    cards = @deck.deal(2)
    assert_kind_of Card, cards[0]
    assert_equal 50, @deck.size
  end
end