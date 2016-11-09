require 'rails_helper'

RSpec.feature "user can delete a player" do
  scenario "they dont see the player on their players page" do
    login_as_user_with_players

    click_link "Players"
    expect(current_path).to eq('/players')

    expect(page).to have_content("Player: Jimmy Butler")
    expect(page).to have_link("Delete Player")

    click_link "Delete Player"
    expect(page).not_to have_content("Player: Jimmy Butler")
  end
end
