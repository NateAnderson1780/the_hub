require 'rails_helper'

RSpec.feature "visitor can sign up for the site" do
  scenario "it can become a registered user" do
    visit '/'

    click_on "Sign Up"

    expect(current_path).to eq("/signup")

    expect(page).to have_css('form')

    fill_in "First name", with: "Nate"
    fill_in "Last name", with: "Anderson"
    fill_in "Email", with: "blah@gmail.com"
    fill_in "Password", with: "password"

    click_button "Create My Account"

    expect(current_path).to eq('/')
  end
end
