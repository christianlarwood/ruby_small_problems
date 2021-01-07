=begin
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.
54:40
What's the expected input(s):
  - array of integers
What's the expected output(s):
  - multiplicative average of the integers in the array
What are the rules (explicit & implicit requirements)?:
  - round to 3 decimal places
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an array as an argument and returns the multiplicative average of the array
Data Structure: Which data structures will work with each step of your mental model?
  - format
  - string interpolation
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - invoke the reduce method on array (:*)
  - invoke the `/` method on the result of the sum and pass in array.size as argument
  - invoke the .to_f method on that return value

=end

# Code:
def show_multiplicative_average(array)
  product = array.reduce(:*).to_f
  average = product / array.size
  puts "The result is #{format('%.3f', average)}"
end

# Test Cases:
puts show_multiplicative_average([3, 5]) == 'The result is 7.500'

puts show_multiplicative_average([6]) == 'The result is 6.000'

puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 'The result is 28361.667'