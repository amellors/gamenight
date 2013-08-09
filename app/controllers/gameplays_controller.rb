class GameplaysController < ApplicationController
  def create
    @night = Night.find(params[:night_id])
    @gameplay = @night.gameplays.create(params[:gameplay].permit(:game_id,:status,:notes,:finished,:winner_ids => []))
    redirect_to night_path(@night)
  end
end
