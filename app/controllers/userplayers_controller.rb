class UserplayersController < ApplicationController
  def create
    player = Player.find(params[:player_id])
    current_user.players << player
    redirect_to players_path
  end

  def destroy
    current_user.players.delete(params[:id])
    redirect_to players_path
  end
end
