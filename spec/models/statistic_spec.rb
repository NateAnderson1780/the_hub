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
  end
end
