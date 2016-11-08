class Game
  def initialize(raw_game)
    @game_data = raw_game
  end

  def venue
    "#{@game_data[:venue][:name]}, #{@game_data[:venue][:city]}, #{@game_data[:venue][:state]}"
  end

  def home_team
    @game_data[:home][:name]
  end

  def away_team
    @game_data[:away][:name]
  end

  def date
    @game_data[:scheduled]
  end

  private
   attr_reader :game_data
end
