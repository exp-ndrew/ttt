require './lib/Board.rb'
require './lib/Player.rb'

class Game

  attr_accessor :board, :playerx, :playero, :result

  def initialize
    @board = Board.new
    @playerx = Player.new(:x)
    @playero = Player.new(:o)
  end

  def check_if_game_over

    @marked_by_x = []
    @marked_by_o = []
    @result = nil

    # build arrays
    (1..9).each do |n|
      case self.board.space(n).marked
      when :x 
        @marked_by_x << n
      when :o 
        @marked_by_o << n
      end  
    end

    # check arrays for winning combos
    winning_combos = [[1,2,3],[4,5,6],[7,8,9],
                      [1,4,7],[2,5,8],[3,6,9],
                      [1,5,9],[3,5,7]]

    winning_combos.each_with_index do |combo, index|

      if @marked_by_x.include?(combo[0]) &&
        @marked_by_x.include?(combo[1]) &&
        @marked_by_x.include?(combo[2])

        @result = :x      # x wins

      elsif @marked_by_o.include?(combo[0]) &&
        @marked_by_o.include?(combo[1]) &&
        @marked_by_o.include?(combo[2])

        @result = :o      # o wins

      elsif @marked_by_x.length + @marked_by_o.length > 8
        if @result == nil
          @result = :c    # cat's game
        end

      end

    end

    @result

  end
end
