class GameplaysController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @night = Night.find(params[:night_id])

    respond_to do |format|
       format.js
    end
  end
  
  def create
    @night = Night.find(params[:night_id])
    gameplay = @night.gameplays.build(params[:gameplay].permit(:game_id,:status,:notes,:finished,:player_ids => []))
    respond_to do |format|
      if gameplay.save
        format.html { redirect_to(@night, notice: 'Gameplay successfully created.') }
        format.js
        format.json { render action: 'show', status: :created, location: gameplay }
      else
        format.html { redirect_to(@night, notice: 'Gameplay could not be created.') }
        format.json { render json: gameplay.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @night = Night.find(params[:night_id])
    gp_name = Gameplay.find(params[:id]).game.name
    @night.gameplays.destroy(Gameplay.find(params[:id]))

    respond_to do |format|
      format.html { redirect_to(@night, notice: "Gameplay for #{gp_name} successfully removed.") }
      format.js
    end
  end
end
