class AddGearColumnToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :gear, :text
  end
end
