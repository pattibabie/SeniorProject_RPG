class RemoveEnvCodeColumnFromMonsters < ActiveRecord::Migration
  def change
    #meow
    remove_column :monsters, :environment_code
  end
end
