class Game
  
  def initialize(player1, player2)
    @@player1 = player1
    @@player2 = player2
    @@current_player = player1
    @@opponent = player2
    @@attacked = false
   end

  def self.attack(player)
    @@attacked = true
    player.damage
  end

  def self.switch
    @@attacked = false
    @@current_player, @@opponent = @@opponent, @@current_player
  end
  
  def self.over?
    @@player1.hp <= 0 || @@player2.hp <= 0
  end

  def self.attacked?
    @@attacked
  end

  def self.opponent
    @@opponent
  end

  def self.current_player
    @@current_player
  end

  def self.player1
     @@player1	  
  end

  def self.player2
     @@player2
  end
end
