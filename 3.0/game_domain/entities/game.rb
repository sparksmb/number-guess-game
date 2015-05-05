class Game
  attr_accessor(:value, :guess, :score)

  def initialize
    @value = rand(1..5)
    @guess = 0
    @score = 0
  end

  def winner?
    @value == @guess
  end
end

#g = Game.new
#g.guess = 3
#puts "guess #{g.guess}, value #{g.value} winner #{g.winner?}"
