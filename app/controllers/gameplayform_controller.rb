class GameplayformController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @night = Night.find(params[:night_id])

    respond_to do |format|
       format.js
    end
  end
end
