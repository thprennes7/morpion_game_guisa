class Game

  def initialize
    @num_turns = 1
  end

  def turn_counter
    @num_turns += 1
  end

  def who_plays(player_1, player_2)
    if @num_turns.odd?
      return player_1
    else
      return player_2
    end

    def check_end()

    end
  end
end
