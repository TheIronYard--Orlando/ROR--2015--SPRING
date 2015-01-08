class Game
  # this is going to be a tic-tac-toe game.
  # it's going to be awesome.
  # we'll play this within irb, by making moves
  # until somebody wins.
  attr_accessor :grid #this means we can
  #interact with the instance variable @grid
  #and we can pretend it's a method: Game.new.grid

  def initialize #this runs when Game.new is called
    @grid = [['', '', ''], 
             ['', '', ''], 
             ['', '', '']]
    @current_player = 'X'
  end  

  def empty_spaces
    @grid.flatten.select{|space| space == ""}
  end 

  def move!
    @grid[1][1] = 'X'
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end 

  def display
    " | | \n" +
    "-+-+-\n" +
    " | | \n" +
    "-+-+-\n" +
    " | | \n"
  end

  def current_player
    @current_player
  end
end