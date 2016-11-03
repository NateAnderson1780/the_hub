require 'rails_helper'

RSpec.feature "visitor can visit the homepage" do
  scenario "it can see links to login and sign up" do
    visit '/'

    within(".navbar") do
      expect(page).to have_link("Login")
      expect(page).to have_link("Sign Up")
    end

    expect(page).to have_content("Welcome to the Hub")
  end
end
