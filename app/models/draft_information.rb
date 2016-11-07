class DraftInformation
  def initialize(raw_draft_info)
    @draft_info_data = raw_draft_info
  end

  def team
    Team.find_by(team_code: @draft_info_data[:team_id]).name
  end

  def year
    @draft_info_data[:year]
  end

  def round
    @draft_info_data[:round]
  end

  def pick
    @draft_info_data[:pick]
  end

  private
    attr_reader :draft_info_data
end
