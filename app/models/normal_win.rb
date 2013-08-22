class NormalWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  belongs_to :winner, class_name: :Player, foreign_key: "winner_id"

  def to_partial_path() "win/normal_win" end
  
  def self.win_params (params)
    params.require(:win_info).permit(:winner_id)
  end
end
