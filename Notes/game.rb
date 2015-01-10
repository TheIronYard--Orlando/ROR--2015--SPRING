class Game
  # this is going to be a tic-tac-toe game.
  # it's going to be awesome.
  # we'll play this within irb, by making moves
  # until somebody wins.

  attr_accessor :board #this means we can
  #interact with the instance variable @board
  #and we can pretend it's a method: Game.new.board

  def initialize #this runs when Game.new is called
    @board = Array.new(9){ ' ' }
    #that's a shortcut way of making an array with nine spaces
    # [ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' ]
  end 
end