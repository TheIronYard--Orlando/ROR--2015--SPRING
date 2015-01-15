require 'minitest/autorun'
require './card'

# a card has a suit and a value
# (numbered cards are worth their number, face cards = 10, ace = 11)
class TestCard < MiniTest::Unit::TestCase

  def setup
    @card = Card.new(2, :hearts)
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