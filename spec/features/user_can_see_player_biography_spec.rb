require 'rails_helper'

RSpec.feature "user can see a players biography" do
  scenario "they can see the bio on their player bio page" do
    VCR.use_cassette "player_biography" do
      login_as_user_with_players

      click_link "Biography"
      expect(current_path).to eq('/biography/1')
      expect(page).to have_content('Jimmy Butler Biography')
    end
  end
end
