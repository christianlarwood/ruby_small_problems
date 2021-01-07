=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, and false if not. A substring is longer than 1 character.

input: 2 strings
output: boolean

algorithm:
  - iterate through the chars in the first string
    - if the char is in the second string, increment count by 1, remove char from string2
  - ternary operator: if count > 1 return true, else false

=end
# def common_substrings(string1, string2)
#   count = 0
#   string1.downcase.chars.each do |char|
#     if string2.downcase.include?(char)
#       string2.sub!(char, '')
#       count += 1
#     end
#   end
#   count > 1 ? true : false
# end

def common_substrings(string1, string2)
    string2.downcase.chars.each do |char|
      return false if string2.count(char) > string1.downcase.count(char)
    end
    true
end

puts common_substrings('Something', 'Fun') == false
puts common_substrings('Something', 'Home') == true
puts common_substrings('Something', ' ') == false
puts common_substrings('BANANA', 'banana') == true
puts common_substrings('test', 'llt') == false
puts common_substrings(' ', ' ') == false
puts common_substrings('134567', '541265') == true
p common_substrings('lemur', 'lpesomtur') == true
