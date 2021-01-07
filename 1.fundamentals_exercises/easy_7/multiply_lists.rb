=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements
33:00
What's the expected input(s):
  - two arrays of integers
What's the expected output(s):
  - a new array of the product of each pair with the same index
What are the rules (explicit & implicit requirements)?:
  - 
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes two arrays and returns a new array of the product of each pair that have the same index
Data Structure: Which data structures will work with each step of your mental model?
  - an empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a variable `result` and assign to it an empty array object
  - iterate over the first array using each_with_index and multiply the first array's element by the second array's element
    - push the product to the result array
  - return the new array

=end

# Code:
def multiply_list(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element * array2[index]
  end
  result
end

# Test Cases:
puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]