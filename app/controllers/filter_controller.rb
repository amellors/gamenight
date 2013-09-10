class FilterController < ApplicationController
  def all
    session[:filter] = 'None'
    redirect_to(:back)
  end
  
  def cape
    session[:filter] = 'Cape'
    redirect_to(:back)
  end
  
  def tuesday
    session[:filter] = 'Tuesday'
    redirect_to(:back)
  end
end
