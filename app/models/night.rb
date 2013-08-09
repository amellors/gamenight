class Night < ActiveRecord::Base
  validates :date, presence: true, uniqueness: true
  validate :player_count_is_greater_than_two?
  validates_associated :players
  
  has_many :gameplays
  has_and_belongs_to_many :players
  
  def player_count_is_greater_than_two?
    if self.players.count < 2
      errors.add(:players, "must have more than #{TextHelper.pluralize players.count, 'player'}")
    end
  end
end
