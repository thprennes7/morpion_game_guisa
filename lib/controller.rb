require 'view'
require 'board'
require 'game'
require 'player'

class Controller

  def start_game
    @player_1 = Player.new
    @player_1.symbol = "x"
    @player_2 = Player.new
    @player_2.symbol = "o"
    @game = Game.new
    @board = Board.new
    @view = View.new(player_1, player_2, board)
  end

  def turn
    while game.check_end == false
      player = @game.who_plays(@player_1, @player_2)
      choice = @view.turn(player.name)
      turn = @game.turn(choice)
      new_board = @board.fill(turn)
      @view.board(new_board)
    end
    view.game_end(game.check_end)
  end
end
