require 'rails_helper'

RSpec.feature "user can login" do
  scenario "if they have a registered account" do
    user = create(:user)

    visit '/login'

    fill_in "Username", with: user.username
    fill_in "Password", with: user.password

    click_button "Login"

    expect(current_path).to eq('/dashboard')
    expect(page).to have_content(user.first_name)
  end
end
