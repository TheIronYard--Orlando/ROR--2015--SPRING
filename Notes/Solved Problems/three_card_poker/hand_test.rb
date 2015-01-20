require 'minitest/autorun'
require './hand'

class HandTest < MiniTest::Unit::TestCase

  def setup
    @two_of_clubs = Card.new(2, :clubs)
    @three_of_clubs = Card.new(3, :clubs)
    @four_of_hearts = Card.new(4, :hearts)
    @ace_of_spades = Card.new(:ace, :spades)
    @hand = Hand.new([@three_of_clubs, @four_of_hearts, @ace_of_spades])

    @two_of_hearts = Card.new(2, :hearts)
  end

  def test_hand_has_cards
    assert @hand.cards.all?{|card| card.is_a?(Card) }
  end

  def test_hand_can_be_displayed
    display_string = "three of clubs, four of hearts, ace of spades"
    assert_equal display_string, @hand.to_s
  end

  def test_hand_has_a_high_card
    assert_equal @ace_of_spades, @hand.high_card
  end

  def pair_hand
    Hand.new([@two_of_clubs, @two_of_hearts, @four_of_hearts])
  end

  def test_hand_can_have_a_pair
    assert pair_hand.has_pair?
    refute @hand.has_pair?
  end

  def flush_hand
    five_of_hearts = Card.new(5, :hearts)
    queen_of_hearts = Card.new(:queen, :hearts)
    Hand.new([@two_of_hearts, five_of_hearts, queen_of_hearts])
  end

  def test_hand_can_be_a_flush
    assert flush_hand.is_flush?
    refute @hand.is_flush?
  end

  def straight_hand
    Hand.new([@two_of_hearts, @three_of_clubs, @four_of_hearts])  
  end

  def test_hand_can_be_straight
    assert straight_hand.is_straight?
    refute @hand.is_straight?
  end

  def three_of_a_kind_hand
    two_of_diamonds = Card.new(2, :diamonds)
    Hand.new([two_of_diamonds, @two_of_hearts, @two_of_clubs])
  end

  def test_hand_can_be_three_of_a_kind
    assert three_of_a_kind_hand.three_of_a_kind?
    refute @hand.three_of_a_kind?
  end

  def straight_flush_hand
    three_of_hearts = Card.new(3, :hearts)
    Hand.new([three_of_hearts, @two_of_hearts, @four_of_hearts])
  end

  def test_hand_can_be_straight_flush
    assert straight_flush_hand.straight_flush?
    refute @hand.straight_flush?
  end

  def test_ace_high_beats_king_high
    king_of_clubs = Card.new(:king, :clubs)
    king_high = Hand.new([@two_of_hearts, @four_of_hearts, king_of_clubs])
    assert @hand > king_high
  end

  def test_pair_beats_ace_high
    assert pair_hand > @hand
  end

  def test_pair_of_threes_beats_pair_of_twos
    three_of_diamonds = Card.new(3, :diamonds)
    pair_of_threes = Hand.new([three_of_diamonds, @three_of_clubs, @four_of_hearts])
    assert pair_of_threes > pair_hand
  end

  def test_flush_beats_pair
    assert flush_hand > pair_hand
  end

  def test_straight_beats_flush
    assert straight_hand > flush_hand
  end

  def test_three_of_a_kind_beats_straight
    assert three_of_a_kind_hand > straight_hand
  end

  def test_straight_flush_beats_three_of_a_kind
    assert straight_flush_hand > three_of_a_kind_hand
  end

  def test_hand_can_be_less_than_queen_high
    garbage_hand = Hand.new([Card.new(3, :diamonds), Card.new(:jack, :spades), Card.new(5, :clubs)])
    assert garbage_hand.less_than_queen_high?
  end

  def test_hand_can_be_more_than_queen_high
    refute @hand.less_than_queen_high?
  end
end