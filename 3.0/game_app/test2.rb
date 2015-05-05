$LOAD_PATH << File.expand_path("../game_domain")

require 'entities/game'
require 'entities/game_stats'
require 'compute_game_result'
require 'record_game_result'

gs = GameStats.new
gs.add_game(Game.new(1))
gs.add_game(Game.new(2))
gs.add_game(Game.new(3))

gs.games.each { |game| 
  puts "guess #{game.guess} value #{game.value} winner #{game.winner?}"
}
puts "wins #{gs.wins} losses #{gs.losses} attempts #{gs.attempts}"

