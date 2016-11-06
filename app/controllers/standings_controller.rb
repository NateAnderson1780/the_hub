class StandingsController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    response = Faraday.get("http://api.sportradar.us/nba-t3/seasontd/2016/REG/standings.json?api_key=#{ENV['sport_radar_api_key']}")
    data = JSON.parse(response.body, symbolize_names: true)
    conference = data[:conferences].find do |raw_conference|
      raw_conference[:id] == @team.conference_code
    end
    division = conference[:divisions].find do |raw_division|
      raw_division[:id] == @team.division_code
    end
    @division_name = division[:name]
    @standings = division[:teams].map do |raw_team|
      DivisionRank.new(raw_team)
    end
  end
end
