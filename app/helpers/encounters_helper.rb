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
end
