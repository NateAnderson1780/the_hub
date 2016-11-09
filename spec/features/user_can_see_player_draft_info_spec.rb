require 'rails_helper'

RSpec.feature "user can see a players draft info" do
  scenario "they can see the draft info on their player draft info page" do
    VCR.use_cassette "player_draft_info" do
      login_as_user_with_players

      click_link "Draft Info"
      expect(current_path).to eq('/draft_information/1')
      expect(page).to have_content('Jimmy Butler Draft Information')
    end
  end
end
