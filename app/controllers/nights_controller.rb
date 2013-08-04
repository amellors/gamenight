class NightsController < ApplicationController
  def new
    @night = Night.new
  end
  
  def create
#    render text: params[:night].inspect
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
    @nights = Night.all
  end
  
  private
    def night_params
      params.require(:night).permit(:date)
    end
end
