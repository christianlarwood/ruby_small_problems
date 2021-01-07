=begin
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.
28:00
What's the expected input(s):
  - array
What's the expected output(s):
  - nested arrays with first and second half of the original array. Odd # of elements put in first array
What are the rules (explicit & implicit requirements)?:
  - 
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes an array as an argument and returns a nested array containing half of the elements in the first and the second half in the second array
Data Structure: Which data structures will work with each step of your mental model?
  - array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a variable `result` and assign to it an empty array
  - conditional statement 
    - if array.size.even?
        - middle = array.size / 2
        - result << [array[0..middle - 1], array[middle..-1]]
    - else 

=end

# Code:
def halvsies(array)
  middle = array.size / 2
  if array.size.even?
    [array[0..middle - 1], array[middle..-1]]
  else
    [array[0..middle], array[middle + 1..-1]]
  end
end

# Test Cases:
puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]