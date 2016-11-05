class Game
  def initialize(raw_game)
    @game = raw_game
  end

  def location
    "#{@game[:venue][:name]}, #{@game[:venue][:city]}, #{@game[:venue][:state]}"
  end


end
