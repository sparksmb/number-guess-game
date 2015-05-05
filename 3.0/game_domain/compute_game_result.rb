class ComputeGameResult
  def initialize(game)
    @game = game
  end

  def execute
    @game.guess = @guess
    if @game.winner?
      @game.score = 1
    else
      @game.score = 0
    end
    return @game
  end
end
