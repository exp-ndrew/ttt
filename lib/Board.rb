require './lib/Space.rb'

class Board 

  attr_accessor :spaces

  def initialize
    @spaces = [spaces]
    (1..9).each { |i| spaces << Space.new(i) }
  end


  def space space_number
    @spaces[space_number]
  end 

end
