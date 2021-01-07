=begin
Given a string and an array of integers representing indices, capitalize all letters at the given indices.

For example:

    capitalize("abcdef",[1,2,5]) = "aBCdeF"
    capitalize("abcdef",[1,2,5,100]) = "aBCdeF". There is no index 100.

The input will be a lowercase string with no spaces and an array of digits.

Approach:
  - iterate over each char in the string
  - if the index of a char is included in the array, capitalize char
  - return the string

Algo:
  - initialize a result variable and assign to an empty string
  - split each char and iterate over with each_with_index
    - if index of current char is in array
      - capitalize char and add to result
    - else add char to result
  - return result string

=end
def capitalize(string, array)
  result = ''
  string.chars.each_with_index do |char, index|
    char_to_add = array.include?(index) ? char.upcase : char
    result += char_to_add
  end
  result
end

p capitalize("abcdef",[1,2,5]) == "aBCdeF"
p capitalize("abcdef",[1,2,5,100]) == "aBCdeF"