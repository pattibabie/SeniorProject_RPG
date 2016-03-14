class Monster < ActiveRecord::Base
  def self.name
    @name = Monster.find(params[:ID]).name
  end

  def self.id
    @id = Monster.ID
  end

  def self.cr
    @cr = Monster.cr
  end

  #find monsters that match the user input
  def self.select_monsters(level, plane, climate, terrain)
    @monster_array = Array.new    #=> [] empty monster array
    monster = Monster.find(id)
    @monster_array.push(self.id)
  end
end
