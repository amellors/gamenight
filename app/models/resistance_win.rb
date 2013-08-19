class ResistanceWin < ActiveRecord::Base
  has_one :gameplay, :as => :win_info
  
  has_and_belongs_to_many :resistance_players, class_name: :Player, :join_table => :resistance_players 
  has_and_belongs_to_many :spy_players, class_name: :Player, :join_table => :spy_players
end
