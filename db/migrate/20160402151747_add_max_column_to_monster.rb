class AddMaxColumnToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :max_num, :integer
  end
end
