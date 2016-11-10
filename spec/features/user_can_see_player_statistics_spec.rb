require 'rails_helper'

RSpec.feature "user can see a players statistics" do
  scenario "they can see the stats on their player stats page" do
    VCR.use_cassette "player_statistics3" do
      login_as_user_with_players

      click_link "Statistics"
      expect(current_path).to eq('/statistics/1')
      expect(page).to have_content('Jimmy Butler 2016-2017 Statistics')
    end
  end
end
