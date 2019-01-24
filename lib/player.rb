class Player
  attr_accessor :name, :symbol

  def initialize
    puts "Comment vous appelez-vous ?"
    print "> "
    @name = gets.chomp
  end
  
end
