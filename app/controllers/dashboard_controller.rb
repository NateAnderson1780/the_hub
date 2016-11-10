class DashboardController < ApplicationController
  def index
    @time = Time.now
    @games = Game.by_day(@time)
  end
end
