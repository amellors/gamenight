class WelcomeController < ApplicationController
  skip_before_action :authorize
  
  def index
    if session[:filter] && session[:filter] != "None"
      case session[:filter]
      when "Tuesday"
        @nights = Night.tuesday.order("date DESC").page(params[:page]).per(5)
      when "Cape"
        @nights = Night.cape.order("date DESC").page(params[:page]).per(5)
      else
        @nights = Night.all.order("date DESC").page(params[:page]).per(5)
      end
    else
      @nights = Night.all.order("date DESC").page(params[:page]).per(5)
    end
    @games = Game.all
  end
end
