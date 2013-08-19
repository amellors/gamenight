class CoopWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
end
