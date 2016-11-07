class BiographiesController < ApplicationController
  def show
    player = Player.find(params[:player_id])
    response = Faraday.get("http://api.sportradar.us/nba-t3/players/#{player.player_code}/profile.json?api_key=#{ENV['sport_radar_api_key']}")
    data = JSON.parse(response.body, symbolize_names: true)
    @biography = Biography.new(data)
  end
end
