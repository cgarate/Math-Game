
module MathGame

  # Stores the status of the game
  class Game

    def initialize
      @players = []
      @players.push(Player.new('Player 1'))
      @players.push(Player.new('Player 2'))
    end

    def show_scores
      puts "#{@players[0].name}: #{@players[0].lives} / 3 \n vs \n#{@players[1].name}: #{@players[1].lives} / 3"
    end

    def start
      puts 'Game On!'
      show_scores

      @players.cycle do |player|
        if @players[0].lives > 0 && @players[1].lives > 0

          @question = Question.new(player.name)
          puts @question.question
          player_answer = gets.chomp
          if @question.answer_correct?(player_answer)
            puts "Correct!"
          else
            puts "Incorrect!"
            player.player_died
          end
          show_scores
        else
          puts "Congratulations! #{player.name} has won the game!"
          break
        end
      end

      puts "****** GAME OVER ******"

    end
  end
end
