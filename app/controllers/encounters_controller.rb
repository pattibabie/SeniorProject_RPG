class EncountersController < ApplicationController
  include EncountersHelper

  def set_inputs
    #getting params from form entries
    @pcs = params[:pcs].to_i
    @lvl = params[:lvl].to_i
    @plane = params[:plane_id]
    @climate = params[:climate_id]
    @terrain = params[:terrain_id]
  end

  def fill_monster_array
    @monster_array = []
    @current_plane = Plane.find_by_id(@plane)
    @outer_plane = Plane.find_by_name('Outer/Elemental Plane')
    @plane_name = @plane

    # @monster_array.push(MonsterPlane.find())
    Monster.all.each do |monster|
      if monster.cr <= @lvl
        #Adds all outer plane beings of the appropriate level
        if monster.planes.exists?(@outer_plane)
          @monster_array.push(monster.id)
        end
        if @current_plane_name == 'Material Plane'
          # Adds all other creatures in the material plane of the appropriate level
          if monster.climates.exists?(@climate)
            if monster.terrains.exists?(@terrain)
              @monster_array.push(monster.id)
            end
          end
        end
      end
    end # end do
  end

  def generate_encounter
    dn = roll(@monster_array.length)

    @d20 = d20_roll
    @m_id = @monster_array[dn - 1]
    @mon = Monster.find_by_id(@m_id)

    #level avg / random monster's challenge rating
    @num_of_monsters = (@lvl / @mon.cr).to_i

    # roll die to possibly add more monsters for challenge
    if @d20 >= 15 && @d20 < 20
      @num_of_monsters += 1
    elsif @d20 == 20
      @num_of_monsters += 3
    end
  end

  def new
    set_inputs
    fill_monster_array
    generate_encounter

    # XP Calculator
    @xp_per_player = xp_per_pc(@mon.xp, @num_of_monsters, @pcs)
    @tot_xp = total_xp(@mon.xp, @num_of_monsters)
  end
end

