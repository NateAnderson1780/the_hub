require 'rails_helper'

RSpec.feature "user can see a teams injuries" do
  scenario "they can see injuries on their teams injury page" do
    VCR.use_cassette "team_injuries" do
      login_as_user_with_teams

      click_link "Injuries"
      expect(current_path).to eq('/injuries/5')
      expect(page).to have_content('Michael Carter-Williams')
    end
  end
end
