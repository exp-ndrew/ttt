class Space

  attr_accessor :space_number, :marked

  def initialize space_number
    @space_number = space_number
    @marked = nil
  end

  def mark player_symbol
    @marked == nil ? @marked = player_symbol : @marked
  end

  def marked
    @marked
  end

end
