class Game
  # this is going to be a tic-tac-toe game.
  # it's going to be awesome.
  # we'll play this within irb, by making moves
  # until somebody wins.

  attr_accessor :board, :current_player, :winner

  def initialize #this runs when Game.new is called
    @board = Board.new
    @current_player = 'X'
  end 

  def move!(row, column)
    # move is something that happens in the game, but it concerns the
    # board. Only the game knows who @current_player is though.
    # so I made a method to tell board to place @current_player (X or O)
    # wherever move! was made, with the same row and column.
    # then @board can check whether the space is empty and whether the
    # placement was successful, returning true or nil to let the game know
    # whether it should switch players or not.
    if @board.place(@current_player, row, column)
      if over?
        @winner = @current_player
        puts "Game over! #{winner} won!"
      else
        switch_players
      end
    end
  end

  def switch_players
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end

  def over?
    board.won_by?(@current_player)
  end
end

class Board

  attr_accessor :spaces #without this, board.spaces doesn't work

  def initialize
    flat_array = Array.new(9){ ' ' }
    # it will be easier to put X's and O's on the board
    # if I let @spaces be an array of arrays.
    @spaces = flat_array.each_slice(3).to_a
    # that was the old #rows method. 
  end

  def rows
    @spaces #since I moved the array nesting into @spaces, 
    # rows and @spaces are the same.
  end

  def columns
    rows.transpose
  end

  def display
    array_of_row_strings = rows.map do |row| 
      row.join('|') + "\n" # turns a row [' ', ' ', ' '] => " | | /n" 
    end
    #array_of_row_strings is now [ " | | /n", " | | /n", " | | /n" ]
    #next, join those together with horizontal lines "-----\n"
    array_of_row_strings.join("-----\n")
  end

  def place(player, row, column)
    if rows[row][column] == ' '
      rows[row][column] = player
      return true
    else
      puts "That space is occupied by '#{rows[row][column]}'"
    end  
  end

  def won_by?(player)
    ways_to_win.any?{ |spaces| three_in_a_row?(spaces, player) } 
  end

  def ways_to_win
    [columns, rows, diagonals].flatten(1)
    # why flatten(1) instead of flatten ?
    # flatten would flatten it all the way to the individual spaces
    # I want [ ['X', 'O', 'X'], ['O', 'X', 'O'], ...]
    # not [ 'X', 'O', 'X', 'O', 'X', 'O', ...] 
  end

  def diagonals
    [ [rows[0][0], rows[1][1], rows[2][2]],
      [rows[2][0], rows[1][1], rows[0][2]]]
  end

  def three_in_a_row?(spaces, player)
    spaces.all?{|space| space == player }
  end

end