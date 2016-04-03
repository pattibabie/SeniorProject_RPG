class AddTacticsColumnToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :tactics, :text
  end
end
