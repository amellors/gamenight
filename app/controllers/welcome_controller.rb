class WelcomeController < ApplicationController
  skip_before_action :authorize
  
  def index
    if session[:filter] && session[:filter] != "None"
      case session[:filter]
      when "Tuesday"
        @nights = Night.tuesday
      when "Cape"
        @nights = Night.cape
      else
        @nights = Night.all.order("date ASC")
      end
    else
      @nights = Night.all.order("date ASC")
    end
    @games = Game.all
  end
end
