class InjuriesController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    response = Faraday.get("http://api.sportradar.us/nba-t3/league/injuries.json?api_key=#{ENV['sport_radar_api_key']}")
    data = JSON.parse(response.body, symbolize_names: true)
    @injury_team = data[:teams].find do |raw_team|
      raw_team[:id] == @team.team_code
    end
    @injuries = @injury_team[:players].map do |raw_player|
      Injury.new(raw_player)
    end
  end
end
