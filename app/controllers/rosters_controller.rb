class RostersController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    @players = RosterPlayer.by_team(@team.team_code)
  end
end

# Index page for all rosters?
