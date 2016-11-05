class HomeController < ApplicationController
  def index
    # response = Faraday.get("http://api.sportradar.us/nba-t3/games/2016/11/04/schedule.json?api_key=#{ENV['sport_radar_api_key']}")
    # parsed_response = JSON.parse(response.body, symbolize_names: true)
    # @games = parsed_response[:games].map do |game|
    #   Game.new(game)
    # end
    # response = Faraday.whatever...
    # parsed_response = Json.parsed_res...
    # binding.pry
    # # Game.new_get
    # @games = parsed_response.map do |game|
    #   Game.new
    # end

    # @games = Game.get_games(date or Time.now)
    # @teams = Team.get_teams

    # @presenter = Presenter.new(date)
  end
end

# view...
#
# @presenter.games
#
# @presenter.teams
#
# class Presenter
#
#   def initialize(date)
#     @date = date
#   end
#
#   def game
#     Game.get_games(date)
#   end
#
#   def teams
#     Team.get_teams
#   end
#
# end
#
# class Game
#   def self.get_games(date)
#     game_hash = SportService.get_games(date)
#     game_hash.map do |game|
#       Game.new(game)
#   end
# end
#
# class SportService
#
#   def self.get_games(date)
#     #Faraday.
