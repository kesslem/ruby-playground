#
#  L33t Sp34k
#
#  Generate a passphrase by
#   - taking in a phrase from the user
#   - stripping out all spaces
#   - converting the right letters to numbers
#     * A == 4
#     * E == 3
#     * I == 1
#     * O == 0
#     * T == 7
#     * S == $
#
#  Example
#  Fold The Table  < -- User enters this
#  F0ldTh3T4bl3    <-- We return this

puts "=== Password Generator ==="
puts "Please enter a phrase to convert: "

user_string = gets.strip

no_spaces = user_string.gsub(" ", "")

letters = no_spaces.split('')

passphrase = ""

letters.each do |letter|
  case letter.downcase
    when 'e' then passphrase << "3"
    when 'a' then passphrase << "4"
    when 'i' then passphrase << "1"
    when 'o' then passphrase << "0"
    when 't' then passphrase << "7"
    when 's' then passphrase << "$"
    else
    passphrase << letter
  end

  # if letter == 'E'|| letter == 'e'
  #   passphrase << "3"
  # elsif letter == 'A'||letter = 'a'
  #   passphrase << "4"
  # elsif letter == 'I'||letter == 'if'
  #   passphrase << "1"
  # elsif letter == 'O'||letter == 'o'
  #   passphrase << "0"
  # elsif letter == 'T'||letter == 't'
  #   passphrase << "7"
  # elsif letter == 'S'||letter == 's'
  #   passphrase << "$"
  # else
  #   passphrase << letter
  # end
end

puts "Your new passphrase is #{passphrase}"
