require 'rails_helper'

RSpec.feature "user can see a teams standings" do
  scenario "they can see the standings on their teams standings page" do
    VCR.use_cassette "team_standings3" do
      login_as_user_with_teams

      click_link "Standings"
      expect(current_path).to eq('/standings/5')
      expect(page).to have_content('Cleveland Cavaliers')
    end
  end
end
