require './lib/Board.rb'
require './lib/Game.rb'
require './lib/Player.rb'
require './lib/Space.rb'

require 'pry'

@current_turn = :x
@game_over = false

def new_game

  loop do
    show_game_board
    show_menu
    input = gets.chomp
    make_move(input)
    check_if_game_over
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


def make_move input

  puts "in the make_move method"
  puts "the current turn is #{@current_turn}"
  toggle_current_turn
  puts "now the current turn is #{@current_turn}"

end


def check_if_game_over

  puts "now we will check to see if the game is over"
  puts "looks like the game is over"

  @game_over = true

  sleep (1)

end


def toggle_current_turn
  @current_turn == :x ? @current_turn = :o : @current_turn = :x
end


def play_again
  puts "Press any key to play again"
  gets
  new_game
end

new_game