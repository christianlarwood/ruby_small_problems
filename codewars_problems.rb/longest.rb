=begin
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

input: sub\
output: substring

rules:
- input only lowercase characters
- at least one letter long
- if there are multiple substrings that are the same or same length, return the first one

approach:
- get all alphabetical substrings from string 
- iterate through each substring return the longest length

algorithm:
- initialize variable `substrings` and assing to empty array
- iterate through the range starting at 0 to the string.size - 1 this will be my index
  - iterate through the range starting at index  to the string.size - 1, this will be my index2
    - capture each substring 
      - if the substring is alphabetical then add it to the substrings array only if below is true
        - invoke sort on substring == substring 
- invoke sort on substrings array and invoke last on the return value

=end
def longest(string)
  substrings = []
  size = string.size
  (0...size).each do |index|
    (index...size).each do |index2|
      if string[index..index2].chars.sort.join == string[index..index2]
        substrings << string[index..index2]
      end
    end
  end
  result = ''
  substrings.each do |substring|
    result = substring if substring.length > result.length
  end
  result
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'