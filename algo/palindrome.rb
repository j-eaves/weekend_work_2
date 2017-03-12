# Complete the method called palindrome? which should accept a string as a parameter and return a boolean indicated whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

def palindrome?(string)
  char_array = string.split("") #split the string into characters
  reverse_string = "" #start with an empty string
  char_array.each do |char|
    #add the string to each character(I memorized this)
    reverse_string = char + reverse_string
  end
  if string == reverse_string
    #if the two are the same, they are a palindrome
    return true
  else
    return false
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end