=begin
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

What's the expected input(s):
  - string containing one or more words 
What's the expected output(s):
  - a new string where words that are 5 chars or more are reversed
What are the rules (explicit & implicit requirements)?:
  - Spaces should be included only when more than one word is present
  - Return a new string
  - Strings will consist of only letters and spaces.
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes one argument, a string or one or more words, and returns a new string where any words that are 5 or more chars are reversed. All other words stay the same. 
Data Structure: Which data structures will work with each step of your mental model?
  - empty array to store the new string of words
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one paramater
  - create a variable assigned to an empty array
  - split the string into separate words and iterate through each of the words. 
    - if a word has 5 or more chars, reverse the order of the letters
    - if not, don't change the word
  - return a new string with all of the words

=end

# Code:
def reverse_words(string)
  result = []
  string.split.each do |word|
    if word.length >= 5
      result << word.reverse
    else
      result << word
    end
  end
  result.join(" ")
end

# Test Cases:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
