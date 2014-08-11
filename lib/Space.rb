class Space

  attr_accessor :space_number, :marked

  def initialize space_number
    @space_number = space_number
    @marked = " "
  end

  def mark player_symbol
    @marked == " " ? @marked = player_symbol : @marked
  end

  def marked
    @marked
  end

end
