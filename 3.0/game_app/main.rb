$LOAD_PATH << File.expand_path("../game_domain")

require 'entities/game'
require 'entities/game_stats'
require 'compute_game_result'
require 'record_game_result'

#g = Game.new
#puts "guess 3, value #{g.value}"

#cgr = ComputeGameResult.new(3, g)
#gc = cgr.execute

#gs = GameStats.new
#gs.add_game(gc)

#puts "length: #{gs.games.length}"

#g0 = gs.games[0]
#puts "winner?: #{ g0.winner?}"


gs = GameStats.new
gs.add_game(Game.new(1))
gs.add_game(Game.new(2))
gs.add_game(Game.new(3))

gs.games.each { |game| 
  puts "guess #{game.guess} value #{game.value} winner #{game.winner?}"
}
puts "wins #{gs.wins} losses #{gs.losses} attempts #{gs.attempts}"

