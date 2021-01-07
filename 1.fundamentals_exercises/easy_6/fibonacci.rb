=begin
20:25
Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

What's the expected input(s):
  - an integer
What's the expected output(s):
  - the index of the number that has the number of digits specified by the input
What are the rules (explicit & implicit requirements)?:
  - must be fibonacci numbers
  - the input is the size of the fibonacci number 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an integer representing the length of a fibonacci integer and return the index of that fibonacci integer. For example, input is 2 meaning return the index of the first fib integer that is 2 digits long
Data Structure: Which data structures will work with each step of your mental model?
  - a result variable
  - a fibonacci sequence
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a result variable and assign it to the integer 0
  - calculate the fibonacci sequence
    - fibonacci variable assigned to an array with [1,1]
    - loop over the array adding the previous 2 elements together to get the newest one
    - stop the loop when the fibonacci integer that equals the size given in the input
    - push that integer to the result 
  - return result

=end

# Code:
def find_fibonacci_index_by_length(num)
  result = 0
  fibonacci = [1, 1]
  first_elem = 0
  second_elem = 1
  loop do
    break if num == fibonacci.last.digits.size
    fibonacci << fibonacci[first_elem] + fibonacci[second_elem]
    first_elem += 1
    second_elem += 1
  end
  second_elem + 1
end

# Test Cases:
puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# puts find_fibonacci_index_by_length(10) == 45
# puts find_fibonacci_index_by_length(100) == 476
# puts find_fibonacci_index_by_length(1000) == 4782
# puts find_fibonacci_index_by_length(10000) == 47847