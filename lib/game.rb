class Game

  attr_reader :player_1, :player_2, :current, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current = @player_1
    @opponent = @player_2
  end

  def attack(player)
    player.attacked
  end

  def switch_turn
    change_current
    change_opponent
  end

  private

  def change_current
    if @current == player_1
      @current = @player_2
    else
      @current = @player_1
    end
  end

  def change_opponent
    if @opponent == player_1
      @opponent = @player_2
    else
      @opponent= @player_1
    end
  end


end