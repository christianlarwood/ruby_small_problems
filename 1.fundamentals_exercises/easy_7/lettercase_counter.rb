=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.
26:30
What's the expected input(s):
  - string
What's the expected output(s):
  - hash containing totals of uppercase, lowercase, and neither
What are the rules (explicit & implicit requirements)?:
  - 
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method th
Data Structure: Which data structures will work with each step of your mental model?
  - hash
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize variable `result` and assign to an empty hash
  - result[lowercase] = invoke count on string and pass in '[a-z]' 
  - invoke count on string and pass in '[A-Z'
  - invoke count on string and pass in '[^a-zA-Z]'

=end

# Code:
def letter_case_count(string)
  result = {}
  result[:lowercase] = string.count('[a-z]')
  result[:uppercase] = string.count('[A-Z]')
  result[:neither] = string.count('^[a-zA-Z]')
  p result
end
# Test Cases:
puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }