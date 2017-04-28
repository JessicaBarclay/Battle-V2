require_relative 'player'

class Game

  attr_reader :players
  attr_reader :active_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @active_player = player_1
  end

  def attack(player)
    player.loses_HP
  end

  def switch_turns
    @players[0], @players[1] = @players[1], @players[0]
    @active_player = @players[0]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

end
