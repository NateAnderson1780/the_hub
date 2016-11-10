require 'rails_helper'

RSpec.feature "user can see a teams schedule" do
  scenario "they can see the schedule on their teams schedule page" do
    VCR.use_cassette "team_schedule3" do
      login_as_user_with_teams

      click_link "Schedule"
      expect(current_path).to eq('/schedule/5')
      expect(page).to have_content('Boston Celtics')
    end
  end
end
