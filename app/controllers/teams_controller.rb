class TeamsController < ApplicationController
  def index
    @teams = Team.all
    @userteams = current_user.teams
  end

end
