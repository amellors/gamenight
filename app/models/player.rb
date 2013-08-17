class Player < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_and_belongs_to_many :nights
  has_and_belongs_to_many :gameplays
  has_many :locations, class_name: :Night, foreign_key: "location_id"
end
