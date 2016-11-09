class Biography
  def initialize(raw_biography)
    @biography_data = raw_biography
  end

  def self.by_player(player_code)
    raw_biography = SportRadarService.new.player_biography(player_code)
    Biography.new(raw_biography)
  end

  def name
    @biography_data[:full_name]
  end

  def height
    "#{feet} ft, #{inches} inches"
  end

  def feet
    @biography_data[:height] / 12
  end

  def inches
    @biography_data[:height] % 12
  end

  def weight
    @biography_data[:weight]
  end

  def position
    @biography_data[:primary_position]
  end

  def jersey_number
    @biography_data[:jersey_number]
  end

  def experience
    @biography_data[:experience]
  end

  def college
    @biography_data[:college]
  end

  def birthplace
    @biography_data[:birth_place]
  end

  def birthdate
    @biography_data[:birthdate]
  end

  private
    attr_reader :biography_data
end
