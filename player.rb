
module MathGame
  # Stores lives and score
  # Can lose a life and score a point.
  # Can lose or win the game.
  class Player

    attr_accessor :lives, :name

    def initialize(name)
      @lives = 3
      @name = name
    end

    def player_died
      @lives -= 1
    end

  end
end
