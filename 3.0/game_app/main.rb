$LOAD_PATH << File.expand_path("../game_domain")
require 'entities/game'
require 'entities/game_stats'
require 'compute_game_result'
require 'record_game_result'

def done(input)
  if input == "exit"
    exit
  end
end

print "\n\ntype \"exit\" to end the game\n\n"
gs = GameStats.new

while true
  print "Enter a number between 1 and 5.\n"
  input = gets.chomp
  done(input)
  gs.add_game(Game.new(input.to_i))
  puts "wins #{gs.wins} losses #{gs.losses} attempts #{gs.attempts}"
end

