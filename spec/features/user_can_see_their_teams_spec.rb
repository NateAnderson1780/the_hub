require 'rails_helper'

RSpec.feature "user can add a team" do
  scenario "they can see the team on their teams page" do
    user = create(:user)

    login(user)

    click_link "Teams"
    expect(current_path).to eq('teams')

    click_link "Add a Team"
  end
end
