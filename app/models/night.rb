class Night < ActiveRecord::Base
  validates :date, presence: true, uniqueness: true
  validate :player_count_is_greater_than_two?
  validates_associated :players
  
  has_many :gameplays
  has_and_belongs_to_many :players
  
  def player_count_is_greater_than_two?
    if player_ids.count < 2
      errors.add(:players, "must have more than #{TextHelper.pluralize player_ids.count, 'player'}")
    end
  end
end
