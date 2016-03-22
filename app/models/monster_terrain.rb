class MonsterTerrain < ActiveRecord::Base
  belongs_to :monster
  belongs_to :terrain
end
