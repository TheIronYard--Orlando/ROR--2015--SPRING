require 'minitest/autorun'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

  def test_game_exists
    assert Game.new
  end

  def test_game_grid_exists
    assert Game.new.grid
  end

  def test_game_grid_has_rows
    assert Game.new.grid.is_a? Array
    assert_equal 3, Game.new.grid.length
  end

end