require 'rails_helper'

RSpec.describe Injury, type: :model do
  it "can build a teams injuries" do
    injury_data = {full_name: 'Gob Bluth',
                   primary_position: 'PG',
                   jersey_number: 5,
                   injuries: [{comment: 'Hurt',
                     status: 'Out',
                     start_date: '11-2-16',
                     update_date: '11-5-16'}]}


    injury = Injury.new(injury_data)

    expect(injury.name).to eq('Gob Bluth')
    expect(injury.position).to eq('PG')
    expect(injury.jersey_number).to eq(5)
    expect(injury.comment).to eq('Hurt')
    expect(injury.status).to eq('Out')
    expect(injury.start_date).to eq('11-2-16')
    expect(injury.update_date).to eq('11-5-16')
  end

  it "can find injuries for a specific team" do
    VCR.use_cassette "team_injuries" do
      team_code = '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c'

      injuries = Injury.by_team(team_code)

      expect(injuries.class).to eq(Array)
    end
  end
end
