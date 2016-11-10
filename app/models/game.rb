class Game
  def initialize(raw_game)
    @game_data = raw_game
  end

  def self.by_schedule(team_code)
    SportRadarService.new.team_schedule(team_code).map do |game|
        Game.new(game) if (game[:home][:id] == team_code || game[:away][:id] == team_code)
    end.compact
  end

  def self.by_day(time)
    SportRadarService.new.daily_schedule(time).map do |game|
      Game.new(game)
    end
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
    "#{time.now.month} #{time.now.day}"
  end

  private
   attr_reader :game_data
end
