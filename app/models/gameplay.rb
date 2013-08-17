class Gameplay < ActiveRecord::Base
  belongs_to :night
  belongs_to :game
  has_and_belongs_to_many :players
  
  validates :game, presence: true
  validates :night, presence: true
  validate :players_valid?
  validates_associated :night
  validates_associated :game
  
  def players_valid?
    if player_ids.count < 1
        errors.add(:players, "Game cannot be played with less than 1 player")
    end
  end
end
