class RefactorGameplay1 < ActiveRecord::Migration
  def change
    remove_column :gameplays, :status, :string
    rename_table :gameplay_winners, :gameplays_players
  end
end
