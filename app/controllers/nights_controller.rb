class NightsController < ApplicationController
  skip_before_action :authorize, only: [:index, :show]
  
  def new
    @night = Night.new
  end
  
  def create
    @night = Night.new(night_params)

    if @night.save
      redirect_to @night
    else
      render 'new'
    end
  end
  
  def show
    @night = Night.find(params[:id])
  end
  
  def edit
    @night = Night.find(params[:id])
  end
  
  def update
    @night = Night.find(params[:id])

    if @night.update(night_params)
      redirect_to @night
    else
      render 'edit'
    end
  end
  
  def destroy
    @night = Night.find(params[:id])
    @night.destroy

    redirect_to nights_path
  end
  
  def index
    @nights = Night.all.order("date ASC")
  end
  
  private
    def night_params
      params.require(:night).permit(:date, :player_ids => [] )
    end
end
