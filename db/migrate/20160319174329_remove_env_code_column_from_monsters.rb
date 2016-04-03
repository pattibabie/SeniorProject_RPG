class RemoveEnvCodeColumnFromMonsters < ActiveRecord::Migration
  def change
    remove_column :monsters, :environment_code
  end
end
