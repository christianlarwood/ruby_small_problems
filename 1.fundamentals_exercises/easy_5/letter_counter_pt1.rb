=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.
24:00
What's the expected input(s):
  - a string of words
What's the expected output(s):
  - hash that shows the number of words of different sizes
What are the rules (explicit & implicit requirements)?:
  - words consist of any string of characters that do not include a space
  - empty input == empty hash
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes a string of words as argument and returns a hash of key-value pairs that count the number of words of different sizes
Data Structure: Which data structures will work with each step of your mental model?
  - hash
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize a variable `result` and assign to it an empty hash
  - split the string into words and iterate over each word
    - assign the length of the word as a key to the hash and 
    - count the number of occurences of that length as the value
  - return the hash

=end

# Code:
def word_sizes(string)
  result = {}
  new_string = []
  string.split.each do |word|
    new_string << word.size
  end
  new_string.each do |num|
    result[num] = new_string.count(num)
  end
  p result
end

# official answer
def word_sizes(string)
  result = Hash.new(0)
  string.split.each do |word|
    result[word.size] += 1
  end
  result
end

# Test Cases:
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}