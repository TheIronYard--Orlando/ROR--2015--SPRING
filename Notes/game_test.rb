require 'minitest/autorun'
#require 'minitest/pride'
require './game'

class TestGame < MiniTest::Unit::TestCase

# there are 2 players
  # player X and player O
# players take turns
  # on each turn you put in an X or an O
  # you have to put your X or O in an empty space
# the game ends when there are 3 X's or 3 O's in a row
  # that's 3 across or 3 top to bottom or 3 in a diagonal 
# or it's a tie if the board gets full

# nouns: board, player(?), turn
# verbs: put - might call that 'move'

  def setup
    @game = Game.new
  end

  def test_game_exists
    assert @game
  end

  def test_board_exists
    assert @game.board
  end

  def test_x_goes_first
    # now that I have a @current_player variable to allow taking turns,
    # I can write this test.
    assert_equal 'X', @game.current_player
  end

  #the move method requires 2 arguments, as coordinates on the board.
  def test_making_first_move_puts_x_on_board
    @game.move!(0, 0)
    assert @game.board.spaces.any?{|space| space == 'X'}
  end

  def test_making_second_move_puts_o_on_board
    @game.move!(0, 0)
    puts "made 1st move"
    @game.move!(0, 1)
    assert @game.board.spaces.any?{|space| space == 'O'}
  end

  def test_second_move_must_be_different_space_from_first_move
    # to get this to pass, I needed to tell move where to go.
    @game.move!(0, 0)
    @game.move!(0, 0)
    assert @game.board.spaces.none?{|space| space == 'O'}
  end
  
end

# the tests that look into the details of a board should be in their
# own class.
class TestBoard < MiniTest::Unit::TestCase
 
# there's a board
  # with 9 spaces
  # the board is 3x3
  # 3 spaces across, 3 top-to-bottom, 
  # has 3 rows and 3 columns
  # it looks like  | |
  #               -----
  #                | | 
  #               -----
  #                | |
  # so the columns and rows overlap
  # like, the first column, that's the first space from each of the rows

  # really the rows and columns aren't the most basic thing
  # the spaces are the *most* basic thing
  # and they're arranged into rows and columns
  
  def setup
    @board = Game.new.board
  end

  def test_board_has_nine_spaces
    assert_equal 9, @board.spaces.length
  end

  def test_board_spaces_are_in_three_rows
    assert_equal 3, @board.rows.length
  end

  def test_row_has_three_spaces
    @board.rows.each do |row|
      assert_equal 3, row.length
    end
  end

  def test_board_spaces_are_in_three_columns
    assert_equal 3, @board.columns.length
  end

  def test_board_displays_as_a_grid
    display_output = " | | \n" +
                     "-----\n" +
                     " | | \n" +
                     "-----\n" +
                     " | | \n" 
    assert_equal display_output, @board.display
  end

end