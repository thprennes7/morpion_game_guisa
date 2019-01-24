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
    game
  end

  def game
    check = false
    while check == false
      @current_player = @game.who_plays(@player_1, @player_2)
      choice = @view.turn(@current_player, @game)
      @board.fill(choice, @current_player)
      check = @game.check_if_end(@view.choices, @board.check_board(@current_player.symbol))
    end
    game_end
  end

  def game_end
    @view.game_end(@game.check_winner(@current_player, @board.check_board(@current_player)))
    Router.new
  end
end
