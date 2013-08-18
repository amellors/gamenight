class GamesController < ApplicationController
  skip_before_action :authorize, only: [:index, :show]
  
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)

      if @game.save
        redirect_to games_url
      else
        render 'new'
      end
  end
  
  def show
    @game = Game.find(params[:id])
  end
  
  def edit
    @game = Game.find(params[:id])
  end
  
  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      redirect_to @game
    else
      render 'edit'
    end
  end
  
  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    redirect_to game_path
  end
  
  def index
    @games = Game.all
  end
  
  private
    def game_params
      params.require(:game).permit(:name)
    end
end
