class AddWinInfoToGameplay < ActiveRecord::Migration
  def change
    add_column :gameplays, :win_info_id, :integer
    add_column :gameplays, :win_info_type, :string
  end
end
