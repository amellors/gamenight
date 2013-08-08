class Gameplay < ActiveRecord::Base
  belongs_to :night, :game
  
  has_and_belongs_to_many :winners, class_name: "Players", join_table: "gameplay_winners"
end
