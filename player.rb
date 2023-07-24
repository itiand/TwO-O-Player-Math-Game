class Player 
  attr_accessor :name, :life

  def initialize(name)
    @life = 0
    @score = 0
    @name =  name
  end

  def gain_score
  end

  def lose_life
  end
  
end