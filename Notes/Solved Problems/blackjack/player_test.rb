require './player'
require './card' # the Player class itself doesn't explicitly depend on the Card class,
                 # but this test suite does

# a hand has cards in it
# the hand belongs to a player
# the hand has a value based on its cards
# if the value of a hand exceeds 21, the hand busts (loses)o
class TestPlayer < MiniTest::Unit::TestCase

  def setup
    cards = [ Card.new(8, :spades), Card.new(6, :clubs)]
    @player = Player.new(cards) 
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

  def test_player_busts_with_hand_valued_over_21
    @player.take Card.new(8, :hearts)
    assert @player.bust?
  end
end