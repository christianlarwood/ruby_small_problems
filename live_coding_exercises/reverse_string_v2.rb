=begin
# Reverse a string, without using String#reverse
Input: string
Output: reversed string

Approach:
  - reverse the order of the characters starting from the last char and ending at the first
  - return a new string

Algorithm:
  - initialize result variable
  - iterate over each char starting from the last char
    - add the char to result variable
  - return result variable

=end
# def string_reverser(string)
#   result = ''
#   string.chars.reverse_each do |char|
#     result += char
#   end
#   result
# end

def string_reverser(string)
  result = ''
  starting_index = -1
  loop do
    break if starting_index < -string.size
    result += string[starting_index]
    starting_index -= 1
  end
  result
end
  

p string_reverser('hello') #== "olleh"
p string_reverser('Launch School') == "loohcS hcnuaL"
