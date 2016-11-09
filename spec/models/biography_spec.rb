require 'rails_helper'

RSpec.describe Biography, type: :model do
  it "can build a players biography" do
    biography_data = {full_name: 'Gob Bluth',
                      height: 73,
                      weight: 180,
                      primary_position: 'PG',
                      jersey_number: 35,
                      experience: 5,
                      college: 'Middlebury',
                      birth_place: 'Chicago',
                      birthdate: '1-7-80'}

    bio = Biography.new(biography_data)

    expect(bio.name).to eq("Gob Bluth")
    expect(bio.height).to eq("6 ft, 1 inches")
    expect(bio.feet).to eq(6)
    expect(bio.inches).to eq(1)
    expect(bio.weight).to eq(180)
    expect(bio.position).to eq('PG')
    expect(bio.jersey_number).to eq(35)
    expect(bio.experience).to eq(5)
    expect(bio.college).to eq('Middlebury')
    expect(bio.birthplace).to eq('Chicago')
    expect(bio.birthdate).to eq('1-7-80')
  end

  it "can find biography for a specific player" do
    VCR.use_cassette "player_biography" do
      player_code = '0e163d44-67a7-4107-9421-5333600166bb'

      bio = Biography.by_player(player_code)

      expect(bio.class).to eq(Biography)
    end
  end
end
