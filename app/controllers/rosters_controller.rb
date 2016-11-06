class RostersController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    response = Faraday.get("http://api.sportradar.us/nba-t3/teams/#{@team.team_code}/profile.json?api_key=#{ENV['sport_radar_api_key']}")
    data = JSON.parse(response.body, symbolize_names: true)
    @players = data[:players].map do |raw_player|
      Player.new(raw_player)
    end
  end
end
