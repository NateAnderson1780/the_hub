class DraftInformationController < ApplicationController
  def show
    @player = Player.find(params[:player_id])
    @draft_information = DraftInformation.by_player(@player.player_code)
  end
end
