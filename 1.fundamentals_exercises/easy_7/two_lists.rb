=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.
38:35
What's the expected input(s):
  - two arrays of elements
What's the expected output(s):
  - single array of all elements
What are the rules (explicit & implicit requirements)?:
  - elements must be combined in alternating order
  - each array has same number of elements
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes two arrays as arguments and returns a single array with combined elements in alternating order from the two arrays.
Data Structure: Which data structures will work with each step of your mental model?
  - empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a variable `result` and assign to it an empty array
  - initialize a variable  `index` and assign to it the integer 0
  - loop through each array and pass in each element to result array 
    - increment index by 1
    - break out of loop when index == array.size
  - return result array

=end

# Code:
def interleave(array1, array2)
  result = []
  index = 0
  loop do 
    result << array1[index] << array2[index]
    index += 1
    break if index == array1.size
  end
  result
end

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# further exploration
def interleave(array1, array2)
  array1.zip(array2).flatten
end

# Test Cases:
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']