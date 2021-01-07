=begin
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

What's the expected input(s):
  - a positive integer  
What's the expected output(s):
  - a string of alternating 1s and 0s
What are the rules (explicit & implicit requirements)?:
  - Output always starts with 1
  - Length of the string should match the given integer
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, starting with 1 whose length will equal the integer. 
Data Structure: Which data structures will work with each step of your mental model?
  - empty string
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method that takes one parameter
  - create a variable that points to an empty string 
  - iterate through the integers up to the integer provided
    - add 1 if integer is even, and 0 otherwise
  - return new string

=end
# Code:
def stringy(num)
  result = ''
  num.times do |index|
    value = index.even? ? '1' : '0'
    result << value
  end

  result
end

# Test Cases:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# further exploration
def stringy_more(num, val = 1)
  result = ''
  num.times do |index|
    if val == 1
      value = index.even? ? '1' : '0'
    else
      value = index.even? ? '0' : '1'
    end
    result << value
  end

  result
end

# test cases
puts stringy_more(5, 0) == '01010'
puts stringy_more(7, 0) == '0101010'
