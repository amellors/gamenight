class CreateNightTypes < ActiveRecord::Migration
  def up
    create_table :night_types do |t|
      t.string :description
      t.timestamps
    end
    add_column :nights, :night_type_id, :integer

    Night.all.each do |night|
      night.night_type_id = 1
      night.save
    end
  end
  
  def down
    drop_table :night_types
    remove_column :nights, :night_type_id
  end
end
