=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only. 

Example 1:
  - Input "abab"
  - Output: True
  - Explanation: It's the substring 'ab' twice. 

Example 2:
  - Input: "aba"
  - Output: False

input: string
output: boolean
algorithm:
  - find a substring that isn't the string itself
    - if substring is evenly divisible into string
      - AND when multiplied by the divisor it equals the string
        - return true
  - else return false

  - find all substrings that are less than and up to 1/2 the length of the string
  - iterate through those substrings and if any can be multiplied by the divisor of the string length divided by the substring length, return true
  - else return false

=end
def repeated_substring(string)
  substrings = []
  max = string.size / 2
  0.upto(max).each do |index|
    substrings << string[0..index]
  end

  substrings.each do |substring|
    if substring * (string.length / substring.length) == string
      return true
    end
  end
  false
end

# my original solution
def repeated_substring(string)
  length = string.size
  (0...length).each do |index|
    (index...length).each do |index2|
      substring = string[index..index2]
      if substring != string
        if length % substring.length == 0
          multiplier, rem = length.divmod(substring.length)
          if string == substring * multiplier
            return true
          end
        end
      end
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