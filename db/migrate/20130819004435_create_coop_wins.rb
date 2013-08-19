class CreateCoopWins < ActiveRecord::Migration
  def change
    create_table :coop_wins do |t|
      t.boolean :players_win
      t.integer :players_score
      
      t.timestamps
    end
  end
end
