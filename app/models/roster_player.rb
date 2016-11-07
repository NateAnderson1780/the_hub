class RosterPlayer
  def initialize(raw_roster_player)
    @roster_player_data = raw_roster_player
  end

  def name
    roster_player_data[:full_name]
  end

  def birthdate
    roster_player_data[:birthdate]
  end

  def height
    "#{roster_player_data[:height]} inches"
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
