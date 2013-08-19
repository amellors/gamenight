class CreateResistanceWins < ActiveRecord::Migration
  def change
    create_table :resistance_wins do |t|
      t.boolean :spies_win

      t.timestamps
    end
  end
end
