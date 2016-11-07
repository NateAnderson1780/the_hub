class UserteamsController < ApplicationController
  def create
    team = Team.find(params[:team_id])
    current_user.teams << team
    redirect_to teams_path
  end

  def destroy
    current_user.teams.delete(params[:id])
    redirect_to teams_path
  end
end
