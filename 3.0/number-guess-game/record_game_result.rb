class RecordGameResult
  attr_accessor: gameStats

  def initialize(gameStats)
    @gameStats = gameStats
  end

  def execute(game)
    gameStatus.add_game(game)
  end
end
