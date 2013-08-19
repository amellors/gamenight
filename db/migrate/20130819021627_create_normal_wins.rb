class CreateNormalWins < ActiveRecord::Migration
  def change
    create_table :normal_wins do |t|
      t.belongs_to :winner

      t.timestamps
    end
  end
end
