require 'rails_helper'

RSpec.feature "User can see all weather info for destination" do
  scenario "on the specific destination page" do
    visit '/'

    click_on "Chicago"

    expect(current_path).to eq("/destinations/:id")

    expect(page).to have_content("Chicago")
    expect(page).to have_content("60120")
    expect(page).to have_content("Chicago")
    expect(page).to have_content("Chicago")
  end
end
