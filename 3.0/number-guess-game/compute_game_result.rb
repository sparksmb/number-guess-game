class ComputeGameResult
  def initialize(guess, game)
    @guess = guess
    @game = game
    @value = 0
  end

  def execute
    game.guess = @guess
    @value = game.generate_value
    game.value = @value
    if game.winner?
      game.score = 1
    else
      game.score = 0
    end
    return game
  end
end
