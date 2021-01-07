=begin
What's the expected input(s):
  - 2 arguments each with integer and either odd? or even? method
What's the expected output(s):
  - boolean
What are the rules (explicit & implicit requirements)?:
  - return true if one argument is truthy, false otherwise
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes 2 arguments and returns true is one argument is truthy and the other is falsy and returns false otherwise
Data Structure: Which data structures will work with each step of your mental model?
  - conditional statement
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method that takes two parameters
  - store return value of first arg 
  - store return value of second arg
  - write conditional statement that looks for 1 true and 1 false and returns true otherwise false

=end

# Code:
def xor?(arg1, arg2)
  [arg1, arg2].include?(true) && [arg1, arg2].include?(false) ? true : false
end

# Test Cases:
puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false