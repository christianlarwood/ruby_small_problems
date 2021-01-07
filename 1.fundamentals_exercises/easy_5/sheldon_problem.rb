=begin
# Given the string of chars a..z A..Z do as in the sample cases
What's the expected input(s):
  - a string of characters
What's the expected output(s):
  - a new string of duplicated characters
What are the rules (explicit & implicit requirements)?:
  - First letter is always capitalized
  - Only alphabetical chars
  - 
Clarifying Questions:
  - empty string?
  - always receive a string?
Describe your mental model (interpretation) of the problem:
  - Write a method that takes a string as an argument. Return a new string where each character is duplicated according to its position. "-" will separate each new set of characters
Data Structure: Which data structures will work with each step of your mental model?
  - an empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - create a result variable and assign to it an empty array
  - split the string into individual characters
  - iterate over each character and duplicate the character 'n' number of times
    - n is the index + 1
    - capitalize the first character in each separate set of chars
    - send the set of chars to the result array
  - join the elements together and return the result array

  =begin
  - create a result variable and assign to it an empty array
  - split the string into individual characters
  - iterate over each character (parameter: chars) 
    - set `n` is the `index + 1`
    - duplicate the `chars` 'n' number of times
    - capitalize the first character in each separate set of chars
    - push the set of chars to the result array
  - join the elements together with "-" and return the result array
=end

# Code:
# Given the string of chars a..z A..Z do as in the sample cases
def accum(string)
  result = []
  string.chars.each_with_index do |char, index|
    n = index + 1
    result << (char * n).capitalize
  end
  result.join('-')
end

# Test Cases:
p accum("abcd") == "A-Bb-Ccc-Dddd"
p accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt") == "C-Ww-Aaa-Tttt"