module EncountersHelper
  def d20_roll
    rand(1..20)
  end

  def roll(sides)
    rand(1..sides)
  end

  def total_xp(xp, num_of_mon)
    xp * num_of_mon
  end

  def xp_per_pc(xp, num_of_mon, num_of_pcs)
    (xp * num_of_mon) / num_of_pcs
  end

  # Returns the appropriate CR depending on the # of PCs
  # If there are more more than 4 PCs, the difficulty or
  # challenge rating of the encounter must increase.
  def get_cr_or_level(num_of_pcs, cr_or_level)
    if num_of_pcs <= 4
      @cr = cr_or_level
    elsif num_of_pcs == 5
      @cr = cr_or_level + (cr_or_level * 0.25)
    elsif num_of_pcs == 6
      @cr = cr_or_level + (cr_or_level * 0.5)
    elsif num_of_pcs == 7
      @cr = cr_or_level + (cr_or_level * 0.75)
    elsif num_of_pcs == 8
      @cr = cr_or_level + cr_or_level
    end
  end

  def rand_add(dice_roll, num_of_mon)
    # roll die to possibly add more monsters for challenge
    if dice_roll < 15
      @num_of_mon = num_of_mon
    elsif dice_roll >= 15 && dice_roll < 20
      @num_of_mon = num_of_mon + 1
    elsif dice_roll == 20
      @num_of_mon = num_of_mon + 3
    end
  end
end
