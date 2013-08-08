class Gameplay < ActiveRecord::Base
  belongs_to :night
  belongs_to :game
  
  has_and_belongs_to_many :winners, class_name: :Player, join_table: "gameplay_winners"
end
