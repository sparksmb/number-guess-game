class GameStats
  attr_accessor(:games, :wins, :losses, :attempts)

  def initialize
    @games = []
    @wins = 0
    @losses = 0
    @attempts = 0
  end

  def add_game(game)
    @games << game
    if game.winner? 
      @wins += 1
    else 
      @losses += 1
    end
    @attempts = @games.length
  end
end

