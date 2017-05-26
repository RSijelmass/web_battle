class Game
  attr_reader :player1, :player2, :current_player, :opponent, :attacked

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent = player2
    @attacked = false
  end

  def attack(player)
    player.damage
    @attacked = true
  end

  def switch
    @attacked = false
    @current_player, @opponent = @opponent, @current_player
  end

end
