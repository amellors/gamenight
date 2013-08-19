class ScoreWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  has_many :players, through: :scorewinentries
end

class ScoreWinEntry < ActiveRecord::Base
  belongs_to :player
  belongs_to :scorewin
end
