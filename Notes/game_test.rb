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
    @game.grid.each do |row|
      assert_equal 3, row.length
    end
  end

  def test_game_starts_with_nine_empty_spaces
    assert_equal 9, @game.empty_spaces.length
  end

  def test_x_can_make_a_move
    @game.move!
    assert_equal 8, @game.empty_spaces.length
  end

  def test_new_game_can_be_displayed
    assert_equal @game.display, 
    " | | \n" +
    "-+-+-\n" +
    " | | \n" +
    "-+-+-\n" +
    " | | \n"
  end

  def test_o_goes_after_x
    @game.move!
    assert_equal "O", @game.current_player
  end

  def test_x_goes_after_o
    @game.move!
    @game.move!
    refute_equal "O", @game.current_player
  end

end