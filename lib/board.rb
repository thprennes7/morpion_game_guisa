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
    @board = [[@a1, @a2, @a3], [@b1, @b2, @b3], [@c1, @c2, @c3]]
  end

  def choice()
  end

  def show_board
    @board = [[@a1, @a2, @a3], [@b1, @b2, @b3], [@c1, @c2, @c3]]
    @board.each do |line|
      line.each do |el|
        print el
      end
      print ""
    end
  end
end
