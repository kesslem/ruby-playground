number = rand(100)

puts "Guess my number between 0 and 100 "

puts "DBG #{number}"

userguess = gets.to_i
iscorrect = false

while iscorrect == false do
  if userguess == number
    puts "You guessed the correct number!"
    iscorrect = true
  elsif userguess <= number+5 && userguess >= number-5
    puts "Getting hot, guess again: "
    userguess = gets.to_i
  elsif userguess <= number+10 && userguess >= number-10
    puts "Getting warmer, guess again: "
    userguess = gets.to_i
  else
    puts "Guess again: "
    userguess = gets.to_i
  end
end
