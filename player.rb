class Player 
  attr_accessor :name, :life

  def initialize(name)
    @life = 3
    @score = 0
    @name =  name
  end

  def gain_score
  end

  def lose_life
    @life -= 1
  end
  
end