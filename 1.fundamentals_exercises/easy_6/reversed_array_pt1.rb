=begin
60
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.
What's the expected input(s):
  - array of elements
What's the expected output(s):
  - same array object with elements in reverse order
What are the rules (explicit & implicit requirements)?:
  - return value must be the same array object
  - elements in the array must be in reverse order
  - cannot use reverse method
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an array as an argument and returns the same array object with the elements in reverse order
Data Structure: Which data structures will work with each step of your mental model?
  - the same array object
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - iterate over each element in the array
  - index starts at -1 and increments by 1 each iteration
  - break out of loop once index < 0
  - 

=end

# Code:
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2 # stops loop one index before middle
    array[left_index], array[right_index] = array[right_index], array[left_index] # parrallel assignment
    left_index += 1
    right_index -= 1
  end

  array
end

# Test Cases:
list = [1,2,3,4]
result = reverse!(list)
p result