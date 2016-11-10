require 'rails_helper'

RSpec.feature "user can add a player" do
  scenario "they can see the player on their players page" do
    user = create(:user)

    login(user)

    click_link "Players"
    expect(current_path).to eq('/players')

    expect(page).not_to have_content("Delete Player")

    select("Jimmy Butler", :class => "Jimmy Butler")
    click_button "Add Player"

    expect(current_path).to eq('/players')
    expect(page).to have_content("Delete Player")
  end
end
