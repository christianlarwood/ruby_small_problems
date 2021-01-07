# write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers except if a number is divisible by 3, print out "Fizz", if a number is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5, print out "FizzBuzz".

=begin
What's the expected input(s):
  - a starting number
  - an ending number
What's the expected output(s):
  - a string of all numbers between and including the start and ending numbers with certain numbers replaced with strings.
What are the rules (explicit & implicit requirements)?:
  - Divisible by 3 & 5 must be "Fizzbuzz"
  - Divisible by 3 must be "Fizz"   
  - Divisible by 5 must be "Buzz" 
Clarifying Questions:
  - negative numbers?
  - empty string?
  - print out each number or string or print out an array?  
Describe your mental model (interpretation) of the problem:
  - Given a starting number and ending number, print out all of the numbers between and including the start/end numbers except replace certain numbers with appropriate strings
Data Structure: Which data structures will work with each step of your mental model?
  - an empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method
  - add a variable, result, and assign to it an empty array
  - iterate through each number in the range (start..end)
    - if num is divisible by 3 & 5 change it to "Fizzbuzz" and add to result
    - if num is divisible by 3 change it to "Fizz" and add to result
    - if num is divisble by 5 change it to "Buzz" and add to result
    - else add to result 
  - print result
=end

# Code:
def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "Fizzbuzz"
    elsif num % 3 == 0
      result << "Fizz"
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num
    end
  end
  puts result.join(', ')
end

# Test Cases:
fizzbuzz(1, 10)
fizzbuzz(1, 15)