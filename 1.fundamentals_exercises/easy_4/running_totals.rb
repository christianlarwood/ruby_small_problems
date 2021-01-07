=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

What's the expected input(s):
  - array of numbers
What's the expected output(s):
  - a new array with same number of elements
What are the rules (explicit & implicit requirements)?:
  - Each element is a running total of the original array
  - 0 elements == empty array
  - All positive integers
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an array of numbers and returns a new array with the same number of elements, and each element is a running total of the original array. 
Data Structure: Which data structures will work with each step of your mental model?
  - array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - iterate through each element in the array and add all subsequent elements together for a total
  - push the current total to a new array
  - return the new array

=end

# Code:
def running_total(array)
  result = []
  sum = 0
  array.each do |num|
    sum += num
    result << sum
  end
  result
end

# official answer
def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

# Test Cases:
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []