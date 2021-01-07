=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

What's the expected input(s):
  - array of strings
What's the expected output(s):
  - array of the same string values with vowels removed
What are the rules (explicit & implicit requirements)?:
  - must remove vowels
  - return new array
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an array of strings as an argument and returns a new array of strings with all of the vowels removed
Data Structure: Which data structures will work with each step of your mental model?
  - empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize result variable and assign to it an empty array
  - iterate over the elements of the array using map
    - remove vowels from each string element using gsub and regex
  - return new array
=end

# Code:
def remove_vowels(array)
  result = array.map do |word|
    word.gsub(/[aeiouAEIOU]/, '')
  end
  result
end

# Test Cases:
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']