require 'rails_helper'

RSpec.feature "user can add a team" do
  scenario "they can see the team on their teams page" do
    user = create(:user)

    login(user)

    click_link "Teams"
    expect(current_path).to eq('/teams')

    expect(page).not_to have_content("Team: Chicago Bulls")

    select("Chicago Bulls", :class => "Chicago Bulls")
    click_button "Add Team"

    expect(current_path).to eq('/teams')
    expect(page).to have_content("Team: Chicago Bulls")
  end
end
