# write a method that takes a string and returns a boolean indicating whether this string has a balanced set of parantheses.

=begin
What's the expected input(s):
  - a string containing characters & non-alphanumerical chars
What's the expected output(s):
  - a boolean true or false
What are the rules (explicit & implicit requirements)?:
  - must be an equal amount of parentheses on either side of the string
  - 
  - 
Clarifying Questions:
  - how do I validate when no parantheses are present?
  - will there always only be 1 set of parentheses?
Describe your mental model (interpretation) of the problem:
  - write a method that takes a string and returns a boolean indicating whether or not the string has a balanced set of parentheses
Data Structure: Which data structures will work with each step of your mental model?
  - return value = boolean
  - split array of characters 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method that takes one parameter
  - split the string into an array of individual chars
  - iterate through each char and compare it to the char in the opposite index
    - if the chars are parentheses and the opposite, but balanced then return true, else false

=end

# Code:
def balancer(string)
  just_paren = string.downcase.delete('A-Za-z')
  just_paren == '()'
end
# Test Cases:
p balancer("hi")
p balancer("(hi")
p balancer("(hi)")
p balancer(")hi(")


