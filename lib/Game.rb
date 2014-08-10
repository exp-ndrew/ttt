require './lib/Board.rb'
require './lib/Player.rb'

class Game

  attr_accessor :board, :playerx, :playero

  def initialize
    @board = Board.new
    @playerx = Player.new(:x)
    @playero = Player.new(:o)
  end

end
