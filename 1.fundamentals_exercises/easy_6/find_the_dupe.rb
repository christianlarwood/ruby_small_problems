=begin
Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once), how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known to be in the array.
16:50
What's the expected input(s):
  - unordered array
What's the expected output(s):
  - the element that appears twice
What are the rules (explicit & implicit requirements)?:
  - 
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an unordered array as an argument and returns the element that is found twice within the array.
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - take the first element in the array and assign it to the result variable
  - iterate through the array and compare each element to the result variable
    - if there's no match, move to the next element and repeat
    - if there is a match, break out of the loop
  - return the result

=end

# Code:
# official solution
def find_dup(array)
  array.find { |elem| return elem if array.count(elem) == 2 }
end

def find_dup(array)
  result = []
  array.each do |element|
    return element if result.include?(element)
    result << element
  end
end

# sort and compare current element to the next one
def find_dup(array)
  array.sort!.each_with_index do |element, index|
    return element if array[index] == array[index + 1]
  end
end

# Test Cases:
puts find_dup([1, 5, 3, 1]) == 1
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73