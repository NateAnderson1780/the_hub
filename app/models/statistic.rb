class Statistic
  def initialize(raw_statistics)
    @statistic_data = raw_statistics
  end

  def self.by_player(player_code)
    raw_statistics = SportRadarService.new.player_statistics(player_code)
    Statistic.new(raw_statistics)
  end

  def team
    "#{@statistic_data[:market]} #{@statistic_data[:name]}"
  end

  def games_played
    @statistic_data[:total][:games_played]
  end

  def games_started
    @statistic_data[:total][:games_started]
  end

  def minutes_per_game
    @statistic_data[:average][:minutes]
  end

  def points_per_game
    @statistic_data[:average][:points]
  end

  def field_goal_percentage
    @statistic_data[:total][:field_goals_pct] * 100
  end

  def three_point_percentage
    @statistic_data[:total][:three_points_pct] * 100
  end

  def free_throw_percentage
    @statistic_data[:total][:free_throws_pct] * 100
  end

  def rebound_average
    @statistic_data[:average][:rebounds]
  end

  def assist_average
    @statistic_data[:average][:assists]
  end

  def turnovers
    @statistic_data[:average][:turnovers]
  end

  def steals
    @statistic_data[:average][:steals]
  end

  private
    attr_reader :statistic_data
end
