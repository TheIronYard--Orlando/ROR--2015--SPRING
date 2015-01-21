require 'minitest/autorun'
require './card'
class CardTest < MiniTest::Unit::TestCase

  def setup
    @seven_of_hearts = Card.new(7, :hearts)
    @ace_of_spades = Card.new(:ace, :spades)
  end

  def test_card_has_suit
    assert_equal :hearts, @seven_of_hearts.suit
  end

  def test_card_has_value
    assert_equal 7, @seven_of_hearts.value
  end

  def test_card_can_be_displayed
    assert_equal "seven of hearts", @seven_of_hearts.to_s
  end

  def test_face_card_can_be_displayed
    assert_equal "ace of spades", @ace_of_spades.to_s
  end

  def test_cards_are_comparable
    three_of_clubs = Card.new(3, :clubs)
    nine_of_diamonds = Card.new(9, :diamonds)
    jack_of_hearts = Card.new(:jack, :hearts)
    assert three_of_clubs < nine_of_diamonds
    assert nine_of_diamonds < jack_of_hearts
    assert jack_of_hearts < @ace_of_spades
  end

end