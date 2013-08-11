class Game < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many :gameplays
  
    def finishedCount
    tempCount = 0
    gameplays.each do |gp|
      tempCount += 1 if gp.finished
    end
    tempCount
  end
  
end
