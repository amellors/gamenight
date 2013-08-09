class Game < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many :gameplays
end
