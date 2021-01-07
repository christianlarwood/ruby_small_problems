# Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

=begin
What's the expected input(s):
  - 2 integers, start number and ending number in a range
What's the expected output(s):
  - array of all prime integers within the range
What are the rules (explicit & implicit requirements)?:
  - number must be prime (only divisible by 1 and itself)
  - 
  - 
Clarifying Questions:
  - how to handle negative numbers? no integers provided?
  - 
Describe your mental model (interpretation) of the problem:
  - Given 2 integers, a starting number and an ending number, return an array of all prime numbers within the range. 
Data Structure: Which data structures will work with each step of your mental model?
  - an empty array to store all prime numbers
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - create a variable with an empty array
  - iterate over every integer within the range of numbers
  - if integer is prime add it to the array
  - return the array
  
  - define a method, find_primes, with 2 parameters, start_num & end_num
  - initialize a variable, result, and assign to it an empty array
  - use each method on the range of integers 
  - within loop if an integer is divisible by 1 and itself and not by 2 then add it to the result array
  - return the result array
=end

# Code:
def find_primes(start_num, end_num)
  result = []
  (start_num...end_num).each do |num|
      result << num + 2
  end
  p result
end
# Test Cases:
p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
# p find_primes(100, 101) == [101]
# p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
