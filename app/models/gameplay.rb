class Gameplay < ActiveRecord::Base
  belongs_to :night
  belongs_to :game
  has_and_belongs_to_many :winners, class_name: :Player, join_table: "gameplay_winners"
  
  validates :game, presence: true
  validates :night, presence: true
  validate :winner_or_not_finished?
  validates_associated :night
  validates_associated :game
  
  def winner_or_not_finished?
    if finished
      if winner_ids.count < 1
        errors.add(:finished, "Game was finished but had no winners")
      end
    else
      if winner_ids.count > 0
        errors.add(:finished, "Game was not finsihed but had winners")
      end
    end
  end
end
