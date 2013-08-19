class AddAdditionalResistanceWinTables < ActiveRecord::Migration
  def change
    create_table :resistance_players do |t|
      t.belongs_to :resistance_win
      t.belongs_to :player
    end
    create_table :spy_players do |t|
      t.belongs_to :resistance_win
      t.belongs_to :player
    end
  end
end
