=begin
48:40
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise return false.

Input: 2 strings
Output: boolean
Approach:
  - compare the characters in string2 with the characters in string1
    - if the number of characters match, then return true
Algorithm:
  - iterate over the chars in string2
      - if the total count of that char is greater than the total count of the char in string1, return false
  - else return true
=end
# compares counts
# def scramble(string1, string2)
#   string2.chars.each do |char|
#     return false if string2.count(char) > string1.count(char)
#   end
#   true
# end

# 1 for 1 substitution
def scramble(string1, string2)
  string2.chars.all? { |char| string1.sub!(char, '') }
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
