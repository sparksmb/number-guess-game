#guess-a-number 2.0
games = 0
wins = 0
losses = 0
print "type \"exit\" to end the game"

while true
  games += 1
  print "\n\nGame " + games.to_s + "\n"
  print "Enter a number between 1 and 5.\n"
  guess = gets.chomp

  value = Random.new.rand(1...5)

  print value.to_s + "\n"

  if guess == "exit"
    exit
  end

  if guess.to_i == value
    print "Hooray\n"
    wins += 1
  else
    print "Wrong\n"
    losses += 1
  end

  print "wins: " + wins.to_s + 
    " losses: " + losses.to_s + 
    " games: " + games.to_s + "\n"
end

