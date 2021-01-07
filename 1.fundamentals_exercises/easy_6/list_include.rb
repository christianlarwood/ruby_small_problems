=begin
Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.
46:00
What's the expected input(s):
  - an array and a search value
What's the expected output(s):
  - boolean
What are the rules (explicit & implicit requirements)?:
  - cannot use .include?
  - must return a boolean
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes an array and a search value as arguments and returns a boolean if the search value is inside the array
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - iterate over the array
    - if the search element == current return true
    - else return false
  - 

=end

# Code:
def include?(array, search)
  array.each do |elem|
    return true if elem == search
  end
  false
end

# Test Cases:
puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false