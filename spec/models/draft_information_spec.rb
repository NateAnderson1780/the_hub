require 'rails_helper'

RSpec.describe DraftInformation, type: :model do
  it "can build a players draft info" do
    draft_info_data = {team_id: '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c',
                          year: '2011',
                          round: 1,
                          pick: 5
                      }

    player = DraftInformation.new(draft_info_data)

    expect(player.team).to eq("Chicago Bulls")
    expect(player.year).to eq("2011")
    expect(player.round).to eq(1)
    expect(player.pick).to eq(5)
  end

  it "can find draft info for a specific player" do
    VCR.use_cassette "player_draft_info" do
      player_code = '0e163d44-67a7-4107-9421-5333600166bb'

      player = DraftInformation.by_player(player_code)

      expect(player.class).to eq(DraftInformation)
    end
  end
end
