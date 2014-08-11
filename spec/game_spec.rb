require 'spec_helper'

describe "Game" do

  it "initializes a Board object and two Player objects" do
    new_game = Game.new
    expect(new_game).to be_an_instance_of Game
    expect(new_game.board).to be_an_instance_of Board
    expect(new_game.playerx).to be_an_instance_of Player
    expect(new_game.playero).to be_an_instance_of Player
  end
  
  it "checks to see if the game is over" do
    new_game = Game.new
    new_game.board.space(1).mark(:x)
    new_game.board.space(2).mark(:x)
    new_game.board.space(3).mark(:x)

    expect(new_game.check_if_game_over).to eq :x
  end

  it "can account for a cat's game" do
    new_game = Game.new
    new_game.board.space(1).mark(:x)
    new_game.board.space(2).mark(:x)
    new_game.board.space(3).mark(:o)
    new_game.board.space(4).mark(:o)
    new_game.board.space(5).mark(:o)
    new_game.board.space(6).mark(:x)
    new_game.board.space(7).mark(:x)
    new_game.board.space(8).mark(:x)
    new_game.board.space(9).mark(:o)

    expect(new_game.check_if_game_over).to eq :c
  end

end