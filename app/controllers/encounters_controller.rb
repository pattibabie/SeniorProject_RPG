class EncountersController < ApplicationController
  include EncountersHelper

  def show
  end

  def empty_string(s)
    if s == ''
      true
    else
      false
    end
  end

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
    @current_plane = Plane.find_by_id(@plane).name
    @outer_plane = Plane.find_by_name('Outer/Elemental Plane')
    @plane_name = @plane
    @actual_level = get_cr_or_level(@pcs, @lvl)

    # @monster_array.push(MonsterPlane.find())
    Monster.all.each do |monster|
      if monster.cr <= @actual_level
        # Adds all outer plane beings of the appropriate level
        if monster.planes.exists?(@outer_plane)
          @monster_array.push(monster.id)
        end
        if @current_plane == 'Material Plane'
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
    @mon_cr = get_cr_or_level(@pcs, @mon.cr)

    # level avg / random monster's challenge rating
    @num_of_monsters = (@lvl / @mon_cr).to_i

    # Prevents the # of monsters in the encounter from being nonexistent or
    # exceeding the max # of monsters that can be found together.
    # Also randomly adds or does not add an extra element of difficulty by
    # adding more monsters depending on a d20 dice roll.
    if @num_of_monsters < 1
      @num_of_monsters = 1
      @num_of_monsters = rand_add(@d20, @num_of_monsters)
    elsif @num_of_monsters > @mon.max_num
      @num_of_monsters = @mon.max_num
      @num_of_monsters = rand_add(@d20, @num_of_monsters)
    end
  end

  def calculate_xp
    # XP Calculator
    @xp_per_player = xp_per_pc(@mon.xp, @num_of_monsters, @pcs)
    @tot_xp = total_xp(@mon.xp, @num_of_monsters)
  end

  def new
    set_inputs
    fill_monster_array
    generate_encounter
    calculate_xp
  end
end

