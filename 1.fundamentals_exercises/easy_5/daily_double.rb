=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

What's the expected input(s):
  - string argument
What's the expected output(s):
  - a new string with all consecutive dupe chars removed
What are the rules (explicit & implicit requirements)?:
  - cannot use Squeeze
  - remove duplicate chars
  - empty string returns empty string
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes a string argument and returns a new string with all consecutive duplicate characters removed
Data Structure: Which data structures will work with each step of your mental model?
  - empty string
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - split the string into characters
  - iterate over the characters and compare the current character to the next character.
    - if they are the same, do nothing
    - if they are different, add the current character to the result variable
  - return the new string

=end

# Code:
def crunch(string)
  result = ''
  index = 0
  loop do
    break if index > string.length - 1
    if string[index] != string[index + 1]
      result << string[index]
    end
    index += 1
  end
  result
end

def crunch(string)
  result = ''
  index = 1
  string.chars.each do |char|
    if char != string.chars[index]
      result << char
    end
    index += 1
  end
  result
end
# Test Cases:
puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''