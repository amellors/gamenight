class WinController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    
    player_ids = params[:player_ids]
    @players = Array.new
    
    player_ids.each { |x| @players << Player.find(x) if Player.find(x) }
    
    @players.compact
    
    respond_to do |format|
       format.js
    end
  end
end