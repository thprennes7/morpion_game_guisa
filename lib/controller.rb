require 'view'
require 'board'
require 'game'
require 'player'

class Controller

  def start_game
    player_1 = Player.new
    player_1.symbol = "x"
    player_2 = Player.new
    player_2.symbol = "o"
    @game = Game.new
  end

end
