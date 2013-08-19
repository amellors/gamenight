class NormalWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  belongs_to :winner, class_name: :Player, foreign_key: "winner_id"
end
