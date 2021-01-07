# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

=begin
 inputs: a string and a positive integer
 outputs: the string printed as many times as the integer
 problem: write a method that takes 2 arguments: a string and a positive integer and prints out the string the number of times indicated by the integer
 algorithm:
  - define a method with two parameters: string, num
  - multiply the string by the num and print to the screen
=end 

def repeat(string, num)
  num.times { |n| puts string }
end

#test cases
repeat('Hello', 3)
repeat("What's up doc?", 4)