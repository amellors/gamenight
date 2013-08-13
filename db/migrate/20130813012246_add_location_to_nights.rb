class AddLocationToNights < ActiveRecord::Migration
  def change
    add_column :nights, :location_id, :integer
  end
end
