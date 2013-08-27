class Game < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many :gameplays
  
  def wins
    game_wins = Array.new;
    gameplays.each do |gp|
      game_wins << gp.win_info if gp.win_info
    end
    game_wins
  end
  
  def finishedCount
    tempCount = 0
    gameplays.each do |gp|
      tempCount += 1 if gp.finished
    end
    tempCount
  end
end
