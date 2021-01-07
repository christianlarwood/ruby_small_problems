=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only. 

Example 1:
  - Input "abab"
  - Output: True
  - Explanation: It's the substring 'ab' twice. 

Example 2:
  - Input: "aba"
  - Output: False

Input: string
Output: boolean

Approach:
  - get all possible substrings from the first half of the string
  - iterate through the substrings and multiply each by a multiple determined by the length of the string / the length of the substring
  - return true if any substring can be multiplied by a number to equal the string, or false otherwise

Algorithm:
  - find the mid point of the string
  - iterate through the string up to the midpoint and find all substrings, put substrings in a new array
  - iterate over each substring and multiply it by the value of taking the string length / substring length
  - return true if any of the substrings can be multiplied to equal the string, else return false

=end
def repeated_substring(string)
  middle = string.size / 2
  substrings = []
  (0..middle).each do |index|
    substrings << string[0..index]
  end
  substrings.each do |substring|
    multiple = string.size / substring.size
    return true if substring * multiple == string
  end
  false
end


p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true