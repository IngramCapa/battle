class Player

  attr_reader :name
  attr_accessor :hp

  DEFAULT_HIT_POINTS = 100

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.receives_damage
  end

  def receives_damage
    @hp -= 10
  end

end
