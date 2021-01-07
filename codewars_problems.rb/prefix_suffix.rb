=begin
In this Kata, you will be given a string and your task will be to return the length of the longest prefix that is also a suffix. A prefix is the start of a string while the suffix is the end of a string. For instance, the prefixes of the string "abcd" are ["a","ab","abc"]. The suffixes are ["bcd", "cd", "d"]. You should not overlap the prefix and suffix.

for example:
p solve("abcd") = 0, because no prefix == suffix. 
p solve("abcda") = 1, because the longest prefix which == suffix is "a".
p solve("abcdabc") = 3. Longest prefix which == suffix is "abc".
p solve("aaaa") = 2. Longest prefix which == suffix is "aa". You should not overlap the prefix and suffix
p solve("aa") = 1. You should not overlap the prefix and suffix.
p solve("a") = 0. You should not overlap the prefix and suffix.

Input: string
Output: intege

Rules:
  - return the length of the longest prefix that is also a suffix
  - do not overlap the prefix and suffix

Approach:
  - find all substrings up to mid point of the string
  - iterate over each substring
    - compare current substring to same length substring at the end of the string
      - if they are equal, and greater than current max length reassign the new length to max_length
  - return max_length

Algorithm:
  - initialize a max_length variable and assign to 0
  - initialize a middle variable and assing to string.size / 2
  - invoke loop 
      - break out of loop once index == middle
      - compare current prefix to current suffix
        - if they are the same and size is greater than max length, reassign the new length to max length
      - increment index by 1
  return max length

=end
def solve(string)
  max_length = 0
  middle = string.size / 2
  index = 0
  loop do
    break if index == middle
    length_from_end = string[0..index].size
    if string[0..index] == string[-length_from_end..-1] && string[0..index].size > max_length
      max_length = string[0..index].size
    end
    index += 1
  end
  max_length
end


p solve("abcd") == 0
p solve("abcda") == 1
p solve("abcdabc") == 3
p solve("aaaa") == 2
p solve("aa") == 1
p solve("a") == 0