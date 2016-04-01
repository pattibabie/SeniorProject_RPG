class FixMonstersTableName < ActiveRecord::Migration
  #meow
  def change
    rename_table :monster, :monsters
  end
end
