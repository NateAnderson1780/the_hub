class SchedulesController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    response = Faraday.get("http://api.sportradar.us/nba-t3/games/2016/REG/schedule.json?api_key=#{ENV['sport_radar_api_key']}")
    data = JSON.parse(response.body, symbolize_names: true)
    @games = data[:games].map do |game|
      Game.new(game) if (game[:home][:id] == @team.team_code || game[:away][:id] == @team.team_code)
    end.compact
  end
end
