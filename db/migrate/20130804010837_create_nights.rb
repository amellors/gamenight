class CreateNights < ActiveRecord::Migration
  def change
    create_table :nights do |t|
      t.date :date

      t.timestamps
    end
    
    create_table :nights_players do |t|
      t.belongs_to :night
      t.belongs_to :player
    end
  end
end
