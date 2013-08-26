class ScoreWinEntry < ActiveRecord::Base
  belongs_to :player
  belongs_to :score_win
  
  def name
    player.name
  end
end
