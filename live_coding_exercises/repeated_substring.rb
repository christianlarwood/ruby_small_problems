=begin
Given a non-empty string, check if it can be constructed by taking a substring of it an appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only. 

Example 1:
  - Input "abab"
  - Output: True
  - Explanation: It's the substring 'ab' twice. 

Example 2:
  - Input: "aba"
  - Output: False

  - initialize results variable and assign to an empty array
  - initialize substring variable and assign to an empty array
  - find all substrings in the given string and push to substring array
    - ignore single characters and the original string
  - iterate through substrings and multiply each substring by an increasing number
    - if new_string equals substring then add to results array
  - invoke .empty? on results array

=end
def repeated_substring(string)
  valid_substrings = []
  all_substrings = []
  middle = string.size / 2
  (0..middle).each do |index|
    all_substrings << string[0..index]
  end
  (0...all_substrings.size).each do |index|
    all_substrings.size.times do |index2|
      if all_substrings[index] * index2 == string
        valid_substrings << all_substrings[index] unless all_substrings[index] == string
      end
    end
  end
  # p all_substrings
  # p valid_substrings
  !valid_substrings.empty?
end

p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true
