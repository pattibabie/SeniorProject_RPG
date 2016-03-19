class Monster < ActiveRecord::Base
  has_many :monster_planes
  has_many :planes, through: :monster_planes

  has_many :monster_climates
  has_many :climates, through: :monster_climates

  has_many :monster_terrains
  has_many :terrains, through: :monster_terrains

  #find monsters that match the user input
  # def self.select_monsters(level, plane, climate, terrain)
  #   @monster_array = Array.new    #=> [] empty monster array
  #   monster = Monster.find(id)
  #   @monster_array.push(self.id)
  # end
end
