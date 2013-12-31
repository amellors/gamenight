class AddNightTypes < ActiveRecord::Migration
  def up
    NightType.create(description: "Regular Tuesday");
    NightType.create(description: "Cape");
    NightType.create(description: "Other");
  end
  
  def down
    NightType.delete_all
  end
end
