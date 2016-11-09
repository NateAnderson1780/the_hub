require 'rails_helper'

RSpec.describe RosterPlayer, type: :model do
  it "can build a teams roster" do
    player_data = {full_name: 'Gob Bluth',
                   birthdate: '1-7-80',
                   height: 70,
                   weight: 180,
                   primary_position: 'PG',
                   jersey_number: 35,
                   experience: 5,
                   college: 'UVM'}

    player = RosterPlayer.new(player_data)

    expect(player.name).to eq('Gob Bluth')
    expect(player.birthdate).to eq('1-7-80')
    expect(player.height).to eq("5 ft, 10 inches")
    expect(player.feet).to eq(5)
    expect(player.inches).to eq(10)
    expect(player.weight).to eq("180 lbs")
    expect(player.position).to eq('PG')
    expect(player.jersey_number).to eq(35)
    expect(player.experience).to eq(5)
    expect(player.college).to eq('UVM')
  end

  it "can find roster players for a specific team" do
    VCR.use_cassette "team_roster" do
      team_code = '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c'

      players = RosterPlayer.by_team(team_code)

      expect(players.class).to eq(Array)
    end
  end
end
