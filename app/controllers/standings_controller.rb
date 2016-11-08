class StandingsController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    @standings = DivisionRank.by_division(@team.conference_code, @team.division_code)
    # @division_name =
  end
end
