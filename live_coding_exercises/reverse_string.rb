# take a string as an argument, return the string in reverse order without using the built in reverse method.

=begin
What's the expected input(s):
  - string of characters
What's the expected output(s):
  - a new string of characters in reverse order
What are the rules (explicit & implicit requirements)?:
  - cannot use reverse method
  - 
  - 
Clarifying Questions:
  - how do you want me to handle empty string? 
  - what about handling integers or non-alphanumeric characters?
Describe your mental model (interpretation) of the problem:
  - given a string, write a method that reverses and returns a new string without using the reverse method
Data Structure: Which data structures will work with each step of your mental model?
  - empty string or empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - write a method with one paramater
  - add a variable called result and assign it an empty array
  - add a variable called index and assign it to integer -1
  - loop through each character in the string starting from the last character
    - add each character to the result
    - stop the loop when you've reached the 0 index of the string
  - join the array together and return result

=end

# Code:
# def reverse_string(string)
#   result = ''
#   index = string.length - 1
#   loop do
#     break if index < 0
#     result << string[index]
#     index -= 1
#   end
#   result
# end  

def reverse_string(string)
  result = []
  string.chars.each do |char|
    result.unshift(char)
  end
  result.join
end

# Test Cases:
p reverse_string("abcde") == "edcba"
p reverse_string(" ") == " "
p reverse_string("football") == "llabtoof"