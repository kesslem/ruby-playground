#Fizz Buzz
#
#Rules:
# -print out the numbers from 1 to 100
# -numbers divisible by three get replaced with "Fizz"
# - numbers divid=sible by five get replaced with "buzz"
# - numbers divisible by both get replaced with "Fizz buzz"

def divisible_by_three?(number)
  number % 3 == 0
end

def divisible_by_five?(number)
  number % 5 == 0
end

def status?
# will return true or false
end

def dangerous?
# change the original value of the variable in place
end

(1..100).each do |number|
  if divisible_by_three?(number) && divisible_by_five?(number)
    puts "Fizz Buzz"
  elsif divisible_by_five? number
    puts "Buzz"
  elsif divisible_by_three? number
    puts "Fizz"
  else
    puts number
  end
end
