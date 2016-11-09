require 'rails_helper'

RSpec.feature "user can see a teams roster" do
  scenario "they can see the roster on their teams roster page" do
    VCR.use_cassette "team_roster" do
      login_as_user_with_teams

      click_link "Roster"
      expect(current_path).to eq('/roster/5')
      expect(page).to have_content('Denzel Valentine')
    end
  end
end
