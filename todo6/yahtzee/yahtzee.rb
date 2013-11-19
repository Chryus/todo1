  def roll_dice
    Array.new(5) { rand(1..6) }
  end

  roll = roll_dice

  def win? roll
    roll.uniq.length == 1 ? true : false
  end

  win?([5,5,4,3,5])
