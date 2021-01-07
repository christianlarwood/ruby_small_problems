=begin
Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

What's the expected input(s):
  - 2 strings with different lengths
What's the expected output(s):
  - a string
What are the rules (explicit & implicit requirements)?:
  - determine the shortest string
  - concatenate the shortest + longest + shortest
  - strings will always be different lengths
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes two strings as arguments, determines the longest string, and returns a new string with the shortest + longest + shortest. 
Data Structure: Which data structures will work with each step of your mental model?
  - empty string
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with 2 parameters
  - create a variable and assign to it the shortest string
  - add the shortest + longest + shorts and return

=end

# Code:
def short_long_short(str1, str2)
  short = str1.length < str2.length ? str1 : str2
  long = str1.length > str2.length ? str1 : str2
  p short + long + short
end

# Test Cases:
puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"