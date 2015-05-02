print "Enter a number between 1 and 5.\n"
guess = gets.chomp.to_i

value = Random.new.rand(1...5)

print value.to_s + "\n"

if guess == value
  print "Hooray\n"
else
  print "Wrong\n"
end


