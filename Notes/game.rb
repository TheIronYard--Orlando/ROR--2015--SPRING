class Game
  # this is going to be a tic-tac-toe game.
  # it's going to be awesome.
  # we'll play this within irb, by making moves
  # until somebody wins.

  attr_accessor :board, :current_player



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
      switch_players
    end
  end

  def switch_players
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end
end

class Board

  attr_accessor :spaces #without this, board.spaces doesn't work

  def initialize
    @spaces = Array.new(9){ ' ' }
    #that's a shortcut way of making an array with nine spaces
    # [ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' ]
  end

  def rows
    # a row is a group (array) of three spaces.
    # the rows method will return an array of all the rows on the board. 
    # since @spaces is already an array, I need a way to divide that up
    # [ @spaces[0..2], @spaces[3..5], @spaces[6..8] ] works
    @spaces.each_slice(3).to_a #this works too
  end

  def columns
    # if I just write @spaces on multiple lines
    # [ ' ', ' ', ' ',
    #   ' ', ' ', ' ',
    #   ' ', ' ', ' ']
    # I can see that the first column takes the 1st space, the 4th, and the 7th.
    # in array indexes, that's @spaces[0], @spaces[3], @spaces[6]
    # so if I couldn't figure out some kind of mapping, I could make
    # columns work like
    # [ [@spaces[0], @spaces[3], @spaces[6]], 
    #   [@spaces[1], @spaces[4], @spaces[7]],
    #   [@spaces[2], @spaces[5], @spaces[8]]]
    # but I want to be more clever
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
      # AAAGH! This doesn't work! I want to change what's on the board,
      # but #rows isn't the *same* as @spaces, it's *a new set of arrays*
      # so when I put things in the arrays made by rows, they don't end up
      # back in @spaces at all.
      return true
    else
      puts "That space is occupied by '#{rows[row][column]}'"
    end  
  end    
end