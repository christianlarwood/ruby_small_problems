=begin
What's the expected input(s):
  - a string
What's the expected output(s):
  - sum of the ASCII chars
What are the rules (explicit & implicit requirements)?:
  - use #ord to get the value of each char
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes a string argument and returns a sum of the ASCII characters in the string
Data Structure: Which data structures will work with each step of your mental model?
  - integer to sum it all up
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - split the string into chars
  - iterate over the string and find the ASCII value of each character. 
  - add the value to a sum

=end

# Code:
def ascii_value(string)
  sum = 0
  string.chars.each { |char| sum += char.ord }
  sum
end

# Test Cases:
puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0