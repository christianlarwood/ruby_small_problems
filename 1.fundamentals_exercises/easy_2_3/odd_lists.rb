=begin
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

What's the expected input(s):
  - array of elements
What's the expected output(s):
  - a new array of only the even index elements
What are the rules (explicit & implicit requirements)?:
  - only elements in the even indeces are allowed
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes one parameter and returns an array of only elements in even indeces
Data Structure: Which data structures will work with each step of your mental model?
  - an empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - create a new results variable and assign it to an empty array
  - iterate through the elements and add only even index elements to the new array
  - return the new array

=end

# Code:
def oddities(array)
  result = []
  array.length.times do |index|
    if index.even?
      result << array[index]
    end
  end
  result
end

def oddities(array)
  result = []
  array.each_with_index do |element, index|
    if index.even?
      result << element
    end
  end
  result
end

# Test Cases:
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []