require 'rails_helper'

RSpec.describe DivisionRank, type: :model do
  it "can build a teams standings" do
    division_rank_data = {market: 'Chicago',
                          name: 'Bulls',
                          wins: 5,
                          losses: 1,
                          games_behind: {
                          division: 2 },
                          streak: {
                          kind: 'win',
                          length: 2  }}

    team = DivisionRank.new(division_rank_data)

    expect(team.name).to eq("Chicago Bulls")
    expect(team.record).to eq("5 - 1")
    expect(team.games_behind).to eq(2)
    expect(team.streak).to eq("win 2")
  end

  it "can find standings for a specific team" do
    VCR.use_cassette "team_standings" do
      conference_code = '3960cfac-7361-4b30-bc25-8d393de6f62f'
      division_code = 'f3aaf23a-1ceb-46ef-8fef-9403692e801b'

      teams = DivisionRank.by_division(conference_code, division_code)
      
      expect(teams.class).to eq(Array)
    end
  end
end
