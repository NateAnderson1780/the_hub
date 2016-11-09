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

  scenario "user can logout" do
    user = create(:user)

    visit '/login'

    fill_in "Username", with: user.username
    fill_in "Password", with: user.password

    click_button "Login"

    expect(current_path).to eq('/dashboard')
    expect(page).to have_content(user.first_name)

    click_link "Logout"
    expect(page).not_to have_content(user.first_name)
  end

  scenario 'they can not use bad credentials to log in' do
    user = create(:user)

    visit login_path

    fill_in 'Username', with: 'random'
    fill_in 'Password', with: user.password
    click_button 'Login'

    expect(page).to have_content('Login to Your Account')
  end
end
