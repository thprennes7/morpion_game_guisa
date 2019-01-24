# On crée la class board
class Board
  # On permet l'accès au class
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :board

   # On crée notre board
  def initialize
    @a1 = "-"
    @a2 = "-"
    @a3 = "-"
    @b1 = "-"
    @b2 = "-"
    @b3 = "-"
    @c1 = "-"
    @c2 = "-"
    @c3 = "-"
    # On stock notre board dans un tableau de 3 hash
    @board = [{a1: @a1,a2: @a2,a3: @a3}, {b1: @b1, b2: @b2, b3: @b3}, {c1: @c1, c2: @c2, c3: @c3}]
  end

    # Méthode pour savoir où attribuer les symbols au case choisi par le joueur
  def fill(choice, player)
    @board.each do |line|
      if line.has_key? choice.downcase.to_sym
        line[choice.downcase.to_sym] = player.symbol
      end
    end
    # On retourne le board modifié
    return @board
  end

   #Méthode pour afficher le board
  def show_board
    # On affiche 1 2 3 et a b c pour orienter plus facilement le joueur dans le jeu
    puts ""
    puts "  1  2  3"
    array = ["A", "B", "C"]
    # On appel la variables board et on boucle pour chaque tour pour afficher le board
    @board.each_with_index do |line, i|
      print array[i]
      line.each do |key, value|
        print " #{value} "
      end
      puts ""
    end
  end
   # Méthode qui vérifie si il y'a une victoire
  def check_board(player_symbol)
    # On crée une seul hash à partir de @board
    flattened_board = {}
    @board.each do |line|
      line.each do |key, value|
        flattened_board[key] = value
      end
    end
    # On vérifie toutes les conditions de victoire
    if (flattened_board[:a1] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:c3] == player_symbol) || (flattened_board[:a3] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:c1] == player_symbol) || (flattened_board[:a1] == player_symbol && flattened_board[:b1] == player_symbol && flattened_board[:b1] == player_symbol) || (flattened_board[:a2] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:c2] == player_symbol) || (flattened_board[:a3] == player_symbol && flattened_board[:b3] == player_symbol && flattened_board[:c3] == player_symbol) || (flattened_board[:a1] == player_symbol && flattened_board[:a2] == player_symbol && flattened_board[:a3] == player_symbol) || (flattened_board[:b1] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:b3] == player_symbol) || (flattened_board[:c1] == player_symbol && flattened_board[:c2] == player_symbol && flattened_board[:c3] == player_symbol)
      return true
    else
      return false
    end
  end
end
