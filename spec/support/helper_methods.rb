def login(user)
  visit '/login'
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password

  click_button "Login"
end

def login_as_user_with_teams
  user = create(:user)

  visit '/login'
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password

  click_button "Login"
  click_link "Teams"

  select("Chicago Bulls", :class => "Chicago Bulls")
  click_button "Add Team"
end

def login_as_user_with_players
  user = create(:user)

  visit '/login'
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password

  click_button "Login"
  click_link "Players"

  select("Jimmy Butler", :class => "Jimmy Butler")
  click_button "Add Player"
end
