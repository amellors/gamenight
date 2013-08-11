class GameplaysController < ApplicationController
  def create
    @night = Night.find(params[:night_id])
    @gameplay = @night.gameplays.build(params[:gameplay].permit(:game_id,:status,:notes,:finished,:winner_ids => []))
    respond_to do |format|
      if @gameplay.save
        format.html { redirect_to(@night, notice: 'Gameplay successfully created.') }
        format.json { render action: 'show', status: :created, location: @gameplay }
      else
        format.html { redirect_to(@night, notice: 'Gameplay could not be created.') }
        format.json { render json: @gameplay.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    night = Night.find(params[:night_id])
    night.gameplays.destroy(Gameplay.find(params[:id]))

    redirect_to night_url(night)
  end
end
