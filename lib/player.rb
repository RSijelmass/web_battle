class Player

attr_reader :name, :hp

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.damage
  end

  def damage
    @hp -= 10
  end

end
