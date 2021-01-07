# Write a method that finds the longest substring that is a palindrome within a string. 

=begin
What's the expected input(s):
  - string
What's the expected output(s):
  - longest substring that is a palindrome
What are the rules (explicit & implicit requirements)?:
  - substring must be a palindrome
  - return a string 
  - 
Clarifying Questions:
  - alphabetical characters? - all lowercase
  - 
Describe your mental model (interpretation) of the problem:
  - define a method that given a string argument, returns the longest substring that is a palindrome. 
Data Structure: Which data structures will work with each step of your mental model?
  - empty string object that will store the current palindrome
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - create a variable to store our current palindrome
  - iterate through the string 
      and find palindrome, 
      compare to current palindrome
  - return longest palindrome

  - define a method with one parameter
  - create a variable, result, that is assigned to an empty string
  - split the string into characters  
  - starting index variable
  - ending index variable
  - lock in first character and iterate over the other characters in the string
    - if substring is palindrome compare it's length to result.length
    - if longer, replace, otherwise move on. 

=end

# Code:
def longest_palindrome(string)
  result = ''
  split_array = string.split('')
  
#   loop do
#     start_index = 0
#     break if start_index == string.length - 1
#     loop do
#       p end_index = start_index + 1
#       break if end_index == string.length
  
    split_array.each_with_index do |char, start_index|
      ((start_index + 1)..(split_array.size - 1)).each do |end_index| 
        if split_array[start_index..end_index] ==     split_array[start_index..end_index].reverse && split_array[start_index..end_index].length > result.length
          result = split_array[start_index..end_index]
        end
      end
    end
      
#       end_index += 1
#       p result
#       # break if end_index == string.length
#     end
#     start_index += 1
#     p start_index 
#     # break if start_index == string.length - 1
#   end  
  result.join('')
end  

# Test Cases:

p longest_palindrome("ppop") #== 'pop'