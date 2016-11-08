class Injury
  def initialize(raw_team)
    @injury_data  = raw_team
  end

  def self.by_team(team_code)
    SportRadarService.new.team_injuries(team_code).map do |raw_player|
      Injury.new(raw_player)
    end
  end

  def name
    injury_data[:full_name]
  end

  def position
    injury_data[:primary_position]
  end

  def jersey_number
    injury_data[:jersey_number]
  end

  def comment
    injury_data[:injuries].first[:comment]
  end

  def status
    injury_data[:injuries].first[:status]
  end

  def start_date
    injury_data[:injuries].first[:start_date]
  end

  def update_date
    injury_data[:injuries].first[:update_date]
  end

  private
    attr_reader :injury_data
end
