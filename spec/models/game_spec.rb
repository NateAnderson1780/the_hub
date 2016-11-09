require 'rails_helper'

RSpec.describe Game, type: :model do
  it "can build a teams schedule" do
    game_data = {scheduled: '12-2-16',
                 venue: {
                 name: 'my place',
                 city: 'Denver',
                 state: 'CO'},
                 home: {
                 name: 'Bulls'},
                 away: {
                 name: 'Cavs'}}


    game = Game.new(game_data)

    expect(game.venue).to eq("my place, Denver, CO")
    expect(game.home_team).to eq("Bulls")
    expect(game.away_team).to eq("Cavs")
    expect(game.date).to eq("12-2-16")
  end

  it "can find schedule for a specific team" do
    VCR.use_cassette "team_schedule" do
      team_code = '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c'

      games = Game.by_schedule(team_code)

      expect(games.class).to eq(Array)
    end
  end
end
