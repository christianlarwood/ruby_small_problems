=begin
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.
14:45
Data Structure: Which data structures will work with each step of your mental model?
  - empty string
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a variable `result` and assign to it an empty string
  - split the string and iterate over each word
    - invoke capitalize on each word
  - invoke join on the array and return it

=end

# Code:
# def word_cap(string)
#   result = string.split.map(&:capitalize)
#   result.join(' ')
# end

# Test Cases:
puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'