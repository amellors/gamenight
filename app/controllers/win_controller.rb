class WinController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    
    player_ids = params[:player_ids]
    @players = Array.new
    
    if player_ids == ""
      @error = "Game needs at least 1 player to be finished"
    else
      player_ids.each { |x| @players << Player.find(x) if Player.find(x) }
      @players.compact
    end
    
    respond_to do |format|
      format.js
    end
  end
end