class Night < ActiveRecord::Base
  validates :date, presence: true, uniqueness: true
  validate :player_count_is_greater_than_two?
  validates_associated :players
  
  has_many :gameplays
  has_and_belongs_to_many :players
  belongs_to :location, class_name: :Player, foreign_key: "location_id"
  
  def player_count_is_greater_than_two?
    if player_ids.count < 2
      errors.add(:players, "must have more than #{TextHelper.pluralize player_ids.count, 'player'}")
    end
  end
  
  def finishedCount
    tempCount = 0
    gameplays.each do |gp|
      tempCount += 1 if gp.finished
    end
    tempCount
  end
  
  def uniqueGamesPlayed
    gamesPlayed = [];
    if gameplays.any?
      gameplays.each do |gp|
        if ! gamesPlayed.include?(gp.game.name)
          gamesPlayed << gp.game.name
        end
      end
    else
      gamesPlayed = %w( None )
    end
    return gamesPlayed
  end
end
