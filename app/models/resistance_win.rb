class ResistanceWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  
  has_and_belongs_to_many :resistance_players, class_name: :Player, :join_table => :resistance_players 
  has_and_belongs_to_many :spy_players, class_name: :Player, :join_table => :spy_players
  
  validate :player_cannot_be_on_both_teams?
  
  def player_cannot_be_on_both_teams?
    interset = resistance_player_ids & spy_player_ids
    if interset.count > 0
      errors.add(:players, "Players cannot be on more than one team")  
    end 
  end
  
  def to_partial_path() "win/resistance_win" end
  
  def resistance_win
    return !spies_win
  end
  
  def self.win_params (params)
    params.require(:win_info).permit(:spies_win,:resistance_player_ids =>[], :spy_player_ids => [])
  end
end
