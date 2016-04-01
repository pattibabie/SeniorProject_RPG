class CreateTableForTerrains < ActiveRecord::Migration
  def change
    create_table :terrains do |t|
      t.text :name
    end
    #meow
    create_table :monster_terrains do |t|
      t.belongs_to :terrain, index: true
      t.belongs_to :monster, index: true
    end
  end
end
