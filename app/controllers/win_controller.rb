class WinController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    
    respond_to do |format|
       format.js
    end
  end
end