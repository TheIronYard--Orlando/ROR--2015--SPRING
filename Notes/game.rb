class Game
  # this is going to be a tic-tac-toe game.
  # it's going to be awesome.
  # we'll play this within irb, by making moves
  # until somebody wins.

  attr_accessor :board #this means we can
  #interact with the instance variable @board
  #and we can pretend it's a method: Game.new.board

  def initialize #this runs when Game.new is called
    @board = Board.new
  end 

  def move!
    @board.spaces[0] = 'X'
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
end