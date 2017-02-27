class InjuriesController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    @injuries = Injury.by_team(@team.team_code)
  end
end

# may need index for all injuries
