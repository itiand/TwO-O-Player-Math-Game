require './player'
require './question'

class Game
  def initialize
    @player1 = nil
    @player2 = nil
    @round = 1
    @current_player = nil
    @game_done = false
  end

  def start
    ##house keeping
    puts "Welcome to TwO-O-Player Math Game!"
    
    puts "Before we begin, please let us know your names."

    puts "Player 1, please enter your name."
    player1_name = gets.chomp
    @player1 = Player.new(player1_name)
    puts "Welcome #{@player1.name}!"

    puts "....."
    puts "Player 2, please enter your name."
    player2_name = gets.chomp
    @player2 = Player.new(player2_name)
    puts "Welcome #{@player2.name}!"

    puts "Let's begin!"

    ##LOOPING STARTS
    ##
    #while player1.life || player2.life > 0  d

    #toggle current player
    #ask current player
    @current_player 
    question = Question.new
    puts question.question
    playerAnswer = gets.chomp
    
    isCorrect = question.correct_answer?(playerAnswer)
    
    puts "#{@current_player} and #{@player1}"
    # if isCorrect
    #   puts "YES! You are correct."
    # else
      
    #   puts "Seriously? No!"
    # end
  
    ##print score

    ##LOOPING ENDS



  end
end
