require 'spec_helper'

describe "Player" do
  it "initializes with the player's symbol" do
    test_playerx = Player.new(:x)
    expect(test_playerx).to be_an_instance_of Player
  end
end
