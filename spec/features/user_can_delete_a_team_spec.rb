require 'rails_helper'

RSpec.feature "user can delete a team" do
  scenario "from their teams page" do
    login_as_user_with_teams

    expect(current_path).to eq('/teams')
    expect(page).to have_content("Team: Chicago Bulls")
    click_link "Delete Team"
    expect(current_path).to eq('/teams')
    expect(page).not_to have_content("Team: Chicago Bulls")
  end
end
