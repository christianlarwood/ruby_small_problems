=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only. 

Example 1:
  - Input "abab"
  - Output: True
  - Explanation: It's the substring 'ab' twice. 

Example 2:
  - Input: "aba"
  - Output: False

Algorithm:
  - find all possible substrings up to half the overall length of the string
  - iterate through a range of numbers
    - iterate through each substring
      - if the substring multiplied by the number == string return true
  - return false

=end
def repeated_substring(string)
  substrings = []
  half = string.size / 2
  (0..half).each do |index|
    substrings << string[0..index]
  end
  (0..string.size).each do |multiplier|
    substrings.each do |substring|
      return true if substring * multiplier == string
    end
  end
  false
end


p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true