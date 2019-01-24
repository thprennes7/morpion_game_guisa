class View
attr_accessor :choices

  def initialize(player_1, player_2, board)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @choices = {A1: "a1", A2: "a2", A3: "a3", B1: "b1", B2: "b2", B3: "b3", C1: "c1", C2: "c2", C3: "c3"}
    puts "Le jeu commence"
  end

  def turn(player, game)
    prompt = TTY::Prompt.new
    puts "____________________________"
    puts "\nTour n°#{game.turn_counter}"
    puts "#{player.name} à votre tour."
    @board.show_board
    select = prompt.select("\nQuelle case voulez-vous jouer ?", @choices, cycle: true)
    @choices.delete(select.upcase.to_sym)
    return select
  end

  def game_end(winner)
    @board.show_board
    puts "\nJeu terminé !"
    puts "#{winner}"
  end
end
