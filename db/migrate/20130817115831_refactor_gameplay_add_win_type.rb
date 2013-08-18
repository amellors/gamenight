class RefactorGameplayAddWinType < ActiveRecord::Migration
  def change
    add_column :games, :win_type, :string
  end
end
