class View

  def initialize(player_1, player_2, board)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    puts "Le jeu commence"
    puts "#{@player_1.name}, à votre tour."
    puts @board.show_board
  end

  def turn(player)
    puts "#{player} à votre tour."
    puts "Quelle case voulez-vous jouer ?"
    print "> "
    choice = gets.chomp
  end

  def game_end(result)
    puts "Jeu terminé !"
    puts result
  end

  def show_board(boxes, player)
    boxes.each do |box|
      if box == true
        puts " _ \n| #{player} |\n _ "
      else
        puts " _ \n| |\n _ "
      end
    end
  end
end
