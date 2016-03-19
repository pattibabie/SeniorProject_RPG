class MonsterPlane < ActiveRecord::Base
  belongs_to :monster
  belongs_to :plane
end
