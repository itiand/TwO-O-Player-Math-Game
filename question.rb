require './player'

class Question

  attr_reader :question, :answer

  def initialize
    num1 = rand(1..500)
    num2 = rand(1..500)
    @question = "What is #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end

  def correct_answer?(answer)
    @answer == answer
  end
end