class WelcomeController < ApplicationController
  skip_before_action :authorize
  
  def index
    @nights = Night.all.order("date ASC")
    @games = Game.all
  end
end
