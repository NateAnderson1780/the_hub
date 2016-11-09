class BiographiesController < ApplicationController
  def show
    player = Player.find(params[:player_id])
    @biography = Biography.by_player(player.player_code)
  end
end
