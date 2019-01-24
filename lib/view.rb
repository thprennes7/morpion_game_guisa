class View
attr_accessor :player_1, :player_2, :board

  def initialize(@player_1, @player_2, @board)
    puts "Le jeu commence"
    puts "#{@player_1}, à votre tour."
  end

  def turn(player)
    puts "#{player} à votre tour."
    puts "Quelle case voulez-vous jouer ?"
    print "> "
    choice = gets.chomp
  end

  def check_end(game)

  end

  def show_board(boxes, player)
    case.each do |box|
      if box == true
        puts " _ \n| #{player} |\n _ "
      else
        puts " _ \n| |\n _ "
  end
end
