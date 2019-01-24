class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :board

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
    @board = [{a1: @a1,a2: @a2,a3: @a3}, {b1: @b1, b2: @b2, b3: @b3}, {c1: @c1, c2: @c2, c3: @c3}]
  end

  def fill(choice, player)
    @board.each do |line|
      if line.has_key? choice.downcase.to_sym
        line[choice.downcase.to_sym] = player.symbol
      end
    end
    return @board
  end

  def show_board
    puts ""
    puts "  1  2  3"
    array = ["A", "B", "C"]
    @board.each_with_index do |line, i|
      print array[i]
      line.each do |key, value|
        print " #{value} "
      end
      puts ""
    end
  end

  def check_board(player_symbol)
    flattened_board = {}
    @board.each do |line|
      line.each do |key, value|
        flattened_board[key] = value
      end
    end
    if (flattened_board[:a1] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:c3] == player_symbol) || (flattened_board[:a3] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:c1] == player_symbol) || (flattened_board[:a1] == player_symbol && flattened_board[:b1] == player_symbol && flattened_board[:b1] == player_symbol) || (flattened_board[:a2] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:c2] == player_symbol) || (flattened_board[:a3] == player_symbol && flattened_board[:b3] == player_symbol && flattened_board[:c3] == player_symbol) || (flattened_board[:a1] == player_symbol && flattened_board[:a2] == player_symbol && flattened_board[:a3] == player_symbol) || (flattened_board[:b1] == player_symbol && flattened_board[:b2] == player_symbol && flattened_board[:b3] == player_symbol) || (flattened_board[:c1] == player_symbol && flattened_board[:c2] == player_symbol && flattened_board[:c3] == player_symbol)
      return true
    else
      return false
    end
  end
end
