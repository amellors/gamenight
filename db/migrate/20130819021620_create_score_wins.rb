class CreateScoreWins < ActiveRecord::Migration
  def change
    create_table :score_wins do |t|
      t.timestamps
    end
    
    create_table :score_win_entries do |t|
      t.belongs_to :score_win
      t.belongs_to :player
      t.integer :score
    end
  end
end
