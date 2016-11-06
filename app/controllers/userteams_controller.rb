class UserteamsController < ApplicationController
  def create
    team = Team.find(params[:team_id])
    current_user.teams << team
    redirect_to teams_path
  end
end
