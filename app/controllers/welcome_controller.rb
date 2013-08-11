class WelcomeController < ApplicationController
  def index
    @nights = Night.all.order("date ASC")
    @games = Game.all
  end
end
