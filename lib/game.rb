class Game
  attr_reader :player1, :player2, :current_player, :opponent

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent = player2
    @@attacked = false
   end

  def self.attack(player)
    @@attacked = true
    player.damage
  end

  def switch
    @@attacked = false
    @current_player, @opponent = @opponent, @current_player
  end
  
  def over?
    @player1.hp <= 0 || @player2.hp <= 0
  end

  def self.attacked?
    @@attacked
  end
end
