class WinformsController < ApplicationController
  def show
    @game = Game.find(params[:game_id])
    

    respond_to do |format|
       format.js
    end
  end
end
