class RosterPlayer
  def initialize(raw_roster_player)
    @roster_player_data = raw_roster_player
  end

  def self.by_team(team_code)
    SportRadarService.new.team_roster(team_code).map do |raw_player|
      RosterPlayer.new(raw_player)
    end
  end

  def name
    roster_player_data[:full_name]
  end

  def birthdate
    roster_player_data[:birthdate]
  end

  def height
    "#{feet} ft, #{inches} inches"
  end

  def feet
    @roster_player_data[:height] / 12
  end

  def inches
    @roster_player_data[:height] % 12
  end

  def weight
    "#{roster_player_data[:weight]} lbs"
  end

  def position
    roster_player_data[:primary_position]
  end

  def jersey_number
    roster_player_data[:jersey_number]
  end

  def experience
    roster_player_data[:experience]
  end

  def college
    roster_player_data[:college]
  end

  private
    attr_reader :roster_player_data
end
