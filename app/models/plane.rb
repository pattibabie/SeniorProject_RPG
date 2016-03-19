class Plane < ActiveRecord::Base
  has_many :monster_planes
  has_many :monsters, through: :monster_planes
end