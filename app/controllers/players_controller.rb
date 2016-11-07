class PlayersController < ApplicationController
  def index
    @players = Player.order("name")
    @userplayers = current_user.players.order("name")
  end
end
