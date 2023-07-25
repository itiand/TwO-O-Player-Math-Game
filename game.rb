require './player'
require './question'

class Game

  def initialize
    @player1 = nil
    @player2 = nil
    @round = 1
    @current_player = nil
  end

  def toggle_player
    @current_player == @player1 ? @player2 : @player1
  end
  
  def house_keeping
    puts "Before we begin, please let us know your names."

    puts "Player 1, please enter your name."
    player1_name = gets.chomp
    @player1 = Player.new(player1_name)
    puts "Welcome #{@player1.name}!"

    puts "-----------------------------------"
    puts "Player 2, please enter your name."
    player2_name = gets.chomp
    @player2 = Player.new(player2_name)
    puts "Welcome #{@player2.name}!"
  end


  def game_done?
    [@player1, @player2].any? { |player| player.life == 0 }
  end

  def print_score
    puts "#{@player1}: #{@player1.life}/3 vs #{@player2}: #{@player2.life}/3"
  end

  def get_valid_integer_input(prompt)
    loop do
      print prompt
      input = gets.chomp
      begin
        return Integer(input)
      rescue ArgumentError
        puts "Invalid input! Please enter a valid number."
      end
    end
  end

  def winner
    @player1.life > 0 ? @player1 : @player2
  end

  def start
    puts "Welcome to TwO-O-Player Math Game!"
    house_keeping
    puts "And let's begin!"

    #loop begins
    while !game_done? do
      @current_player = @current_player ? toggle_player : @player1
      question = Question.new

      #ask question to current player
      puts "To #{@current_player}: #{question.question}"

    
      player_answer = get_valid_integer_input("Enter your answer: ")

      #check if isCorrect
      is_correct = question.correct_answer?(player_answer)
      if is_correct
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        @current_player.lose_life
      end
      
      print_score
  
      #continue or game done?
      if game_done?
        puts "----- GAME OVER -----"
        puts "#{winner.name} wins with a score of #{winner.life}/3!"
        puts "Final score is #{@player1.name}: #{@player1.life}/3 vs #{@player2.name}: #{@player2.life}/3"
        puts "Good bye!"
    
      else
        puts "----- NEW TURN -----"
      end  
    end
  end
end
