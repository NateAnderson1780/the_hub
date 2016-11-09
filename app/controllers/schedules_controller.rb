class SchedulesController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    @games = Game.by_schedule(@team.team_code)
  end
end
