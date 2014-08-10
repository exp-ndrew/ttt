require 'spec_helper'

describe "Game" do

  it "initializes a Board object and two Player objects" do
    new_game = Game.new
    expect(new_game).to be_an_instance_of Game
    expect(new_game.board).to be_an_instance_of Board
    expect(new_game.playerx).to be_an_instance_of Player
    expect(new_game.playero).to be_an_instance_of Player
  end
end