class CreateRemainingTables < ActiveRecord::Migration
  def change
    create_table :climates do |t|
      t.text :name
    end
    create_table :monster_climates do |t|
      t.belongs_to :climate, index: true
      t.belongs_to :monster, index: true
    end
    create_table :planes do |t|
      t.text :name
    end
    #meow
    create_table :monster_planes do |t|
      t.belongs_to :plane, index: true
      t.belongs_to :monster, index: true
    end
  end
end
