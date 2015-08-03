class GameBoard
  def initialize 
    @array = %w{O O O O O}
  end

  def to_s
    puts @array
  end

end

game_board = GameBoard.new()
puts game_board
