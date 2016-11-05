def login(user)
  visit '/login'
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password

  click_button "Login"
end
