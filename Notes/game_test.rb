require 'minitest/autorun'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

  def setup #this runs before each test
    @game = Game.new
  end

  def test_game_exists
    assert @game
  end

  def test_game_grid_exists
    assert @game.grid
  end

  def test_game_grid_has_3_rows
    assert @game.grid.is_a? Array
    assert_equal 3, @game.grid.length
  end

  def test_every_row_of_game_grid_has_3_columns
    assert @game.grid[0].is_a? Array
    assert_equal 3, @game.grid[0].length
  end
end