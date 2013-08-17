class AddFinishedColumnToGameplays < ActiveRecord::Migration
  def change
    # Add the column 
    add_column :gameplays, :finished, :boolean
  end
end
