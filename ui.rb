require './lib/Board.rb'
require './lib/Game.rb'
require './lib/Player.rb'
require './lib/Space.rb'

require 'pry'

@current_turn = :x
@game_over = false

def new_game

  @game = Game.new

  loop do
    show_game_board
    show_menu
    input = gets.chomp
    if input.match(/\b\d\b/) == nil
      puts "That's not a valid input!"
    else
      make_move(input)
    end
    @game_over == true ? break : redo

  end

  play_again

end


def show_game_board
  system('clear')
  puts "the board will render here"
  puts "\n\n"
end


def show_menu
  puts "Player #{@current_turn}, it's your turn!"
  puts "Enter the space number you wish to mark:"
end


def make_move i

  if @game.board.space(i.to_i).marked == nil 
    @game.board.space(i.to_i).mark(@current_turn)
    toggle_current_turn
  else
    puts "That space is already marked. Choose another!"
  end

  check_if_game_over

end


def check_if_game_over

  case @game.check_if_game_over
  when :x
    puts "x player wins!"
    @game_over = true
  when :o
    puts "o player wins!"
    @game_over = true
  when :c
    puts "cat's game!"
    @game_over = true
  else
    @game_over = false
  end

end


def toggle_current_turn
  @current_turn == :x ? @current_turn = :o : @current_turn = :x
end


def play_again
  puts "Enter any key to play again"
  puts "Enter 'x' to quit"
  input = gets.chomp
  case input
    when 'x'
      exit
    else 
      new_game
    end

end

new_game