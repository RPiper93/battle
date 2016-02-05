class Game

  attr_reader :player_1, :player_2, :current

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current = player_1
  end

  def attack(player)
    player.attacked
  end

  def switch_turn
    if @current == player_1
      @current = player_2
    else
      @current = player_1
    end
  end

end