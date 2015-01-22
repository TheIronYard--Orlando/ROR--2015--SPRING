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
    assert_equal "Seven of Hearts", @seven_of_hearts.to_s
  end

  def test_face_card_can_be_displayed
    assert_equal "Ace of Spades", @ace_of_spades.to_s
  end

  def test_cards_are_comparable
    three_of_clubs = Card.new(3, :clubs)
    nine_of_diamonds = Card.new(9, :diamonds)
    jack_of_hearts = Card.new(:jack, :hearts)
    assert three_of_clubs < nine_of_diamonds
    assert nine_of_diamonds < jack_of_hearts
    assert jack_of_hearts < @ace_of_spades
  end

  # I need to get numbered cards to give me a number,
  # but face cards or aces to give me a letter
  def test_numbered_card_has_face_value
    assert_equal 7, @seven_of_hearts.face_value
  end

  def test_face_card_has_face_value
    assert_equal 'A', @ace_of_spades.face_value
  end

  #I want to get the 1st letter from the suit name, capitalized
  def test_card_has_initial
    assert_equal 'H', @seven_of_hearts.initial
  end

  #I want to display the card as an image (img tag in html)
  def test_card_will_display_as_image
    assert_equal '<img src="card_images/Hearts/7H.svg">', @seven_of_hearts.to_img
  end
end