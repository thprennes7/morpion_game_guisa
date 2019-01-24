require 'controller'

# Création de la classe
class Router

  # méthode d'initialisation pour afficher le menu
  def initialize
    controller = Controller.new
      puts "\n\nBienvenue dans notre bon gros jeu de morpion"
      # Un prompt pour naviguer entre les choix du menu du jeu
    prompt = TTY::Prompt.new
    start = prompt.yes?("\nVoulez-vous jouer ?")
    if start == true
      controller.start_game
    else
      puts "\nAu revoir !"
    end
  end
end
