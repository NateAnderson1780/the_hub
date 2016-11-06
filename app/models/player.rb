class Player
  def initialize(raw_roster)
    @roster_data = raw_roster
  end

  def name
    roster_data[:full_name]
  end

  def birthdate
    roster_data[:birthdate]
  end

  def height
    "#{roster_data[:height]} inches"
  end

  def weight
    "#{roster_data[:weight]} lbs"
  end

  def position
    roster_data[:primary_position]
  end

  def jersey_number
    roster_data[:jersey_number]
  end

  def experience
    roster_data[:experience]
  end

  def college
    roster_data[:college]
  end

  private
    attr_reader :roster_data
end
