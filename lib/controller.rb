require 'view'
require 'board'
require 'game'
require 'player'

class Controller

   # On appel les joueurs depuis la class player et on attribut les symboles du morpion à chaque joueur 
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
  
  # Une méthode qui lance le jeu 
  def game
    check = false
    # Boucle qui crée les tours de jeu 
    while check == false
      # On défini le joueur à ce tour en appelant les classes player et game
      @current_player = @game.who_plays(@player_1, @player_2)
      # On affiche un menu pour choisir la case à remplir et on enregistre le choix du joueur
      choice = @view.turn(@current_player, @game)
      # On applique le choix du joueur au board
      @board.fill(choice, @current_player)
      # On vérifie si il y'a un gagnant ou si il reste des cases à remplir
      check = @game.check_if_end(@view.choices, @board.check_board(@current_player.symbol))
    end
    game_end
  end
  
  # Méthode qui affiche la fin de partie et le gagnant. Puis relance une partie
  def game_end
    @view.game_end(@game.check_winner(@current_player, @board.check_board(@current_player)))
    Router.new
  end
end
