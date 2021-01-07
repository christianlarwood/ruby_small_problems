=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
51:00
What's the expected input(s):
  - an array of integers between 0 and 19
What's the expected output(s):
  - a new array of integers sorted based on the english words for each number
What are the rules (explicit & implicit requirements)?:
  - sorted based on english words
  - 
  - 
Clarifying Questions:
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an array of integers 0-19 as an argument and returns a new array of integers sorted based on their english words
Data Structure: Which data structures will work with each step of your mental model?
  - array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - create an hash of integer to their english word pairs
  - convert the integers to english names and sort
  - convert the names back to numbers and return the array

=end

# Code:
ENGLISH_NUMS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(array)
  array.sort_by do |num|
    ENGLISH_NUMS[num]
  end
end

# Test Cases:
puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]