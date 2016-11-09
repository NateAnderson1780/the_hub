class StatisticsController < ApplicationController
  def show
    @player = Player.find(params[:player_id])
    @statistics = Statistic.by_player(@player.player_code)
  end
end
