class Night < ActiveRecord::Base
  validates :date, presence: true

  has_and_belongs_to_many :players
end
