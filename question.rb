
module MathGame

  class Question

    attr_reader :question, :answer

    def initialize(player)
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @answer = @num1 + @num2
      @question = "#{player}: what is #{@num1} plus #{@num2} ? "
    end

    def answer_correct?(answer)
      answer.to_i == @answer
    end

  end

end
