=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

What's the expected input(s):
  - two array arguments with integers as elements
What's the expected output(s):
  - a new sorted array of the product of every pair of integers
What are the rules (explicit & implicit requirements)?:
  - sorted by increasing value
  - all possible pairs 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes two arrays of integers and returns a new array of the product of all possible pairs. Array will be sorted in increasing value
Data Structure: Which data structures will work with each step of your mental model?
  - an empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a variable `result` and assign to it an empty array object
  - initialize the first value of the shortest array in a variable
  - iterate through the longest array with the first value and push the product to the result array
  - push the next value of the shortest array to the variable and repeat the loop
  - end the loop once all elements of the shortest array have been iterated over
  return the result array

=end

# Code:
def multiply_all_pairs(array1, array2)
  result = []
  array1.each do |num1|
    array2.each do |num2|
      result << num1 * num2
    end
  end
  result.sort
end

# Test Cases:
puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]