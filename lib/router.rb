require 'controller'

class Router

  def initialize
    controller = Controller.new
      puts "Bienvenue dans notre bon gros jeu de morpion"
    prompt = TTY::Prompt.new
    start = prompt.yes?("Voulez-vous jouer ?")
    if start == true
      controller.start_game
    else
      puts "Au revoir !"
    end
  end
end
