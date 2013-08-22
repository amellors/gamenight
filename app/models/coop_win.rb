class CoopWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  
  def to_partial_path() "win/coop_win" end
    
  def self.win_params (params)
    params.require(:win_info).permit(:players_win,:players_score)
  end
end
