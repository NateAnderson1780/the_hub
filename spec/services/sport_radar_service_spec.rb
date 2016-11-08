require 'rails_helper'

RSpec.describe SportRadarService do
  it "can get a players statistics" do
    VCR.use_cassette("player_statistics") do
      stats = SportRadarService.new.player_statistics(0e163d44-67a7-4107-9421-5333600166bb)

    end
  end
end
