require 'controller'

class Router

  def initialize
    controller = Controller.new
      puts "\n\nBienvenue dans notre bon gros jeu de morpion"
    prompt = TTY::Prompt.new
    start = prompt.yes?("\nVoulez-vous jouer ?")
    if start == true
      controller.start_game
    else
      puts "\nAu revoir !"
    end
  end
end
