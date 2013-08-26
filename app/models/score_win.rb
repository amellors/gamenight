class ScoreWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  has_many :score_win_entries
  has_many :players, through: :score_win_entries
  
  accepts_nested_attributes_for :score_win_entries
  
  def to_partial_path() "win/score_win" end
  
  def self.win_params (params)
    params.require(:win_info).permit(score_win_entries_attributes: [:player_id, :score ])
  end
end