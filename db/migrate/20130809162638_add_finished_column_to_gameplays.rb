class AddFinishedColumnToGameplays < ActiveRecord::Migration
  def up
    # Add the column 
    add_column :gameplays, :finished, :boolean
  
    # Populate based on status column
    Gameplay.all.each do |gp|
      if gp.status =~ /Finished/
        gp.finished = true
      else
        gp.finished = false
      end
      gp.save
    end
  
  end
  
  def down
    # Remove Column
    remove_column :gameplays, :finished
  end
end
