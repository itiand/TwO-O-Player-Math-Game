class Player 
  attr_accessor :name, :life

  def initialize(name)
    @life = 3
    @name =  name
  end

  def lose_life
    @life -= 1
  end

  def to_s
    @name
  end
end