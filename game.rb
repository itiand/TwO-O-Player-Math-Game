require './player'


class Game
  def initialize
    @player1 = nil
    @player2 = nil
    @round = 0
    @urrent_player = @player1
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

    



  end
end
