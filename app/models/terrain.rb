class Terrain < ActiveRecord::Base
  has_many :monster_terrains
  has_many :monsters, through: :monster_terrains
end
