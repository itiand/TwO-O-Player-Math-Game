class Player 
  attr_accessor :name, :life

  def initialize(name)
    @life = 1
    @name =  name
  end

  def gain_score
  end

  def lose_life
    @life -= 1
  end

  def to_s
    @name
  end
end