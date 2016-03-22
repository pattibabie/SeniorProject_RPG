class MonsterClimate < ActiveRecord::Base
  belongs_to :monster
  belongs_to :climate
end
