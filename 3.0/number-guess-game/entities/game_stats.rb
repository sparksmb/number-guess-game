class
  attr_accessor: games, wins, losses, attempts

  def initialize
    @games = []
    @wins = 0
    @losses = 0
    @attempts = 0
  end

  def add_game(game)
    @games << game
    if game.won? 
      @wins += 1
    else 
      @losses += 1
    end
    @attemps = @games.length
  end
end

