class TeamsController < ApplicationController
  def index
    @teams = Team.order("name")
    @userteams = current_user.teams
  end

end
