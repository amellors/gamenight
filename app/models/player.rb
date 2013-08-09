class Player < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_and_belongs_to_many :nights
  has_and_belongs_to_many :winners, class_name: :Player, join_table: "gameplay_winners"
end
