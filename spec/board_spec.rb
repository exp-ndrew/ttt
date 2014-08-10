require 'spec_helper'

describe "Board" do 
  it "initializes with 9 space objects" do
    test_board = Board.new

    expect(test_board).to be_an_instance_of Board
  end

  it "has a method for calling an individual space on the board" do
    test_board = Board.new
    expect(test_board.space(1)).to be_an_instance_of Space
  end

  it "can mark a given space using the 'mark' method in each space object" do
    test_board = Board.new
    test_board.space(1).mark(:x)
    expect(test_board.space(1).marked).to eq :x
  end


end