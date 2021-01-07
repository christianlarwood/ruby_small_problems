=begin
What's the expected input(s):
  - a string of numeric characters
What's the expected output(s):
  - an integer
What are the rules (explicit & implicit requirements)?:
  - cannot use any of the standard conversion methods
  - all chars will be numeric
  - 
Clarifying Questions:
  - always positive chars?
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes a string of numeric characters and converts it to an integer
Data Structure: Which data structures will work with each step of your mental model?
  - array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - create a hash of key-value pairs to represent strings and numbers
  - iterate through each char and find the appropriate numeric value
  - push that value to a new array
  - join and return the array

=end

# Code:
NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits_array = string.chars.map { |char| NUMBERS[char] }

  result = 0
  digits_array.each { |num| result = 10 * result + num }
  result
end

# Test Cases:
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# further exploration
HEXA = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def hexa_to_i(string)
  digits_array = string.upcase.chars.map { |char| HEXA[char] }

  exponent = digits_array.length - 1
  sum = 0
  digits_array.each do |num|
    sum += (num * (16**exponent))
    exponent -= 1
  end
  sum
end

# test cases
puts hexa_to_i('4D9f') == 19871
puts hexa_to_i('D1CE') == 53710