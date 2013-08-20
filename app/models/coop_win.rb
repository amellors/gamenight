class CoopWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  
  def to_partial_path() "wins/coop_win" end
end
