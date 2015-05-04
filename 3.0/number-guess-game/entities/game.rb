class Game
  attr_accessor :value, :guess, :result
  def initialize
    @value = 0
    @guess = 0
    @result = ""
  end

  def is_correct
    return @value == @guess
  end

  def generate_value
    return Random.new(1...5)
  end
end

