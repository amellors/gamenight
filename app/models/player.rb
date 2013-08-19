class Player < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_and_belongs_to_many :nights
  has_and_belongs_to_many :gameplays
  has_many :locations, class_name: :Night, foreign_key: "location_id"
  
  # resistance play relationships
  has_and_belongs_to_many :spy_plays, class_name: :ResistanceWin, :join_table => :spy_players
  has_and_belongs_to_many :resistance_plays, class_name: :ResistanceWin, :join_table => :resistance_players
  
  # Score win relationship
  has_many :score_wins, through: :scorewinentries
  
  # normal win relationship
  has_many :normal_wins, foreign_key: "winner_id"
end
