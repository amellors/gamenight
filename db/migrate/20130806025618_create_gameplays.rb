class CreateGameplays < ActiveRecord::Migration
  def change
    create_table :gameplays do |t|
      t.references :night
      t.references :game
      t.string :status
      t.string :notes

      t.timestamps
    end
    
    create_table :gameplay_winners do |t|
      t.belongs_to :gameplay
      t.belongs_to :player
    end
  end
end
