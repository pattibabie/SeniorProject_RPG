class Climate < ActiveRecord::Base
  has_many :monster_climates
  has_many :monsters, through: :monster_climates
end