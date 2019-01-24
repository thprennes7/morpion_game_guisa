require 'view'
require 'board'
require 'game'
require 'player'

class Controller

  def start_game
    @player_1 = Player.new
    @player_1.symbol = "X"
    @player_2 = Player.new
    @player_2.symbol = "O"
    @game = Game.new
    @board = Board.new
    @view = View.new(@player_1, @player_2, @board)
    turn
  end

  def turn
    check = false
    while check == false
      player = @game.who_plays(@player_1, @player_2)
      choice = @view.turn(player, @game)
      @board.fill(choice, player)
      check = @game.check_end
    end
    game_end
  end

  def game_end
    view.game_end(result)
  end
end
