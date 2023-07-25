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

  def toggle_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end
  
  def house_keeping
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
  end


  def game_done?
    @game_done = @player1.life == 0 || @player2.life == 0
  end

  def print_score
    puts "#{@player1}: #{@player1.life}/3 vs #{@player2}: #{@player2.life}/3"
  end

  def start
    puts "Welcome to TwO-O-Player Math Game!"
    house_keeping
    puts "Let's begin!"

    #loop begins
    while !@game_done do
      @current_player = @current_player ? toggle_player : @player1
      question = Question.new

      #ask question to current player
      puts "To #{@current_player}: #{question.question}"
      playerAnswer = gets.chomp.to_i

      #check if isCorrect
      isCorrect = question.correct_answer?(playerAnswer)
      if isCorrect
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        @current_player.lose_life
      end
      
      print_score
  
      #continue or game done?
      if game_done?
        puts "----- GAME OVER -----\nGood bye!"
      else
        puts "----- NEW TURN -----"
      end  
    end
  end
end
