require_relative 'player'

class Game

  def attack(player)
    player.loses_HP
  end

end
