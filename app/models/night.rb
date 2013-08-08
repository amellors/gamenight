class Night < ActiveRecord::Base
  validates :date, presence: true

  has_many :gameplays
  has_and_belongs_to_many :players
end
