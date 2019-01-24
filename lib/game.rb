class Game

  # initialisation pour compter les tours du jeu
  def initialize
    @num_turns = 0
  end
  
  # Compte les tous du jeu
  def turn_counter
    @num_turns += 1
  end

  # Choisi quel joueur doit jouer, selon si le n' de tour est pair ou impair.
  def who_plays(player_1, player_2)
    if @num_turns.odd?
      return player_2
    else
      return player_1
    end
  end

  # On véifie si la g
  def check_if_end(choices, board)
    # On vérifie si la méthode check_board dans le board.rb est true (donc si il y'a un gagnant) si true on retourne true
    if board == true
      return true
      # On vérifie si il reste des choix possibile à faire et cas échéant on retourne true
    elsif choices.length == 0
      return true
    # Si autre, retourne false pour continuer à jouer
    else
      return false
    end
  end
  
  # On vérifie quel joueur à gagné grace à la méthode check_board dans notre board.rb ou si il y'a une égalité.
  def check_winner(player, board)
    if board == true
      return "#{player.name} a gagné"
    else
      return "C'est une égalité !"
    end
  end
end
