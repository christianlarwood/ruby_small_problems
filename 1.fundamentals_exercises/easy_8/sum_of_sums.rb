=begin
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.
7:30
What's the expected input(s):
  - an array of numbers
What's the expected output(s):
  - the sum of all subsequences of numbers
What are the rules (explicit & implicit requirements)?:
  - array always contains 1 integer
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes an array of numbers and sums each subsequence
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a variable `sum` and assign to it the integer 0
  - initialize a variable `index` and assign to it the integer 0
  - within a loop
    - reassign sum variable to the current sum + sum of invoking [0..index] on the array
    - break out of the loop when index == array.size
  return sum

=end

# Code:
def sum_of_sums(array)
  sum = 0
  index = 0
  loop do

    sum += array[0..index].sum
    index += 1
    break if index == array.size
  end
  sum
end

# Test Cases:
puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35