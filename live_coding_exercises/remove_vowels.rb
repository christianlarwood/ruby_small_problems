# write a method that takes an array of strings and returns an array of the same string values with the vowels removed. 

=begin
What's the expected input(s):
  - an array of strings
What's the expected output(s):
  - a new array of strings with the vowels removed from each string
What are the rules (explicit & implicit requirements)?:
  - remove all vowels from each string 
  - 
  - 
Clarifying Questions:
  - how to handle integers?
  - keep capital letters?
  - empty array? 
Describe your mental model (interpretation) of the problem:
  - given an array of string elements (Words) remove all vowels from each string and return a new array of strings sans vowels
Data Structure: Which data structures will work with each step of your mental model?
  - empty array
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter, array
  - initialize a new variable and assign it the return value of
  - iterate through each string and remove vowels
  - return results array
=end

# Code:
# def remove_vowels(array)
#   array.map do |string|
#     string.gsub(/[AEIOUaeiou]/, '')
#   end
# end  

def remove_vowels(array)
  array.map do |string|
    string.delete('AEIOUaeiou')
  end
end  

# Test Cases:
p remove_vowels(["green", "yellow", "black", "white"])