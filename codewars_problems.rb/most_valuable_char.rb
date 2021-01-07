=begin
In this Kata, you will be given a string and your task is to return the most valuable character. The value of a character is the difference between the index of its last occurrence and the index of its first occurrence. Return the character that has the highest value. If there is a tie, return the lexicographically lowest character. [For Golang return rune]

All inputs will be lower case.

For example:
solve('a') = 'a'
solve('ab') = 'a'. Last occurrence is equal to first occurrence of each character. Return lexicographically lowest.
solve("axyzxyz") = 'x'

Algorithm:
  - result variable = ''
  - find difference: find the first index of the char, find the last index of the char 
  - return char with highest value or first char if there's a tie

=end
# def solve(string)
#   result = ''
#   largest_diff = -1
#   string.chars.each_with_index do |char, index|
#     difference = string.rindex(char) - index
#     if difference > largest_diff
#       result = char
#       largest_diff = difference
#     end
#   end
#   result
# end

def solve(string)
  result = []
  diff = []
  largest_diff = -1
  string.chars.each_with_index do |char, index|
    difference = string.rindex(char) - index
    if difference >= largest_diff
      result << char
      diff << difference
      largest_diff = difference
    end
  end
  highest_values = []
  result.each_with_index do |char, index|
    if diff[index] == largest_diff
      highest_values << char
    end
  end
  highest_values.sort.first
end

def solve(string)
  string.chars.sort_by { |char| [string.index(char) - string.rindex(char), char]}
end

# p solve('a') == 'a'
# p solve('ab') == 'a'
p solve("axyzxyz") #== 'x'
p solve("fgefgdcbadcba") #== 'a'