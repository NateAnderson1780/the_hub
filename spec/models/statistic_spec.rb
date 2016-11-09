require 'rails_helper'

RSpec.describe Statistic, type: :model do
  it "can build a players statistics" do
    statistic_data = {market: 'Chicago',
                      name: 'Bulls',
                      total: {games_played: 10,
                              games_started: 5,
                              field_goals_pct: 0.473,
                              three_points_pct: 0.200,
                              free_throws_pct: 0.800},
                      average: {minutes: 35,
                                points: 25,
                                rebounds: 8,
                                assists: 7,
                                turnovers: 6,
                                steals: 5}}

    player_stats = Statistic.new(statistic_data)

    expect(player_stats.team).to eq("Chicago Bulls")
    expect(player_stats.games_played).to eq(10)
    expect(player_stats.games_started).to eq(5)
    expect(player_stats.minutes_per_game).to eq(35)
    expect(player_stats.points_per_game).to eq(25)
    expect(player_stats.field_goal_percentage).to eq(47.3)
    expect(player_stats.three_point_percentage).to eq(20.0)
    expect(player_stats.free_throw_percentage).to eq(80.0)
    expect(player_stats.rebound_average).to eq(8)
    expect(player_stats.assist_average).to eq(7)
    expect(player_stats.turnovers).to eq(6)
    expect(player_stats.steals).to eq(5)
  end

  it "can find draft info for a specific player" do
    VCR.use_cassette "player_statistics" do
      player_code = '0e163d44-67a7-4107-9421-5333600166bb'

      player = Statistic.by_player(player_code)

      expect(player.class).to eq(Statistic)
    end
  end
end
