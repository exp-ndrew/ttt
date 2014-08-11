require 'spec_helper'

describe "Space" do 

  it "initializes with a space number and a 'marked' attribute" do
    space1 = Space.new(1)
    expect(space1.marked).to eq " "
    expect(space1.space_number).to eq 1
  end

end
