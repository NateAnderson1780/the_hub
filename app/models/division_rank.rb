class DivisionRank
  def initialize(raw_team)
    @division_rank_data = raw_team
  end

  def self.by_division(conference_code, division_code)
    SportRadarService.new.team_standings(conference_code, division_code).map do |raw_team|
      DivisionRank.new(raw_team)
    end
  end

  def name
    "#{division_rank_data[:market]} #{division_rank_data[:name]}"
  end

  def record
    "#{division_rank_data[:wins]} - #{division_rank_data[:losses]}"
  end

  def games_behind
    division_rank_data[:games_behind][:division]
  end

  def streak
    "#{division_rank_data[:streak][:kind]} #{division_rank_data[:streak][:length]}"
  end

  private
    attr_reader :division_rank_data
end
