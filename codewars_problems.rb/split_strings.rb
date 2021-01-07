=begin
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Rules:
  - split string into 2 char long substrings
  - if 1 char, add _
  - if empty string, return empty array

Algorithm:
    - iterate over the string at 2 char length chunks
      - add each substring to a new array
      - if substring size is 1, add a _
    - return new array

=end
def solution(string)
  result = []
  starting_index = 0
  ending_index = 1
  loop do
    break if ending_index > string.size
    substring = string[starting_index..ending_index]
    if substring.size == 1
      result << substring + "_"
    else
      result << substring
    end
    starting_index += 2
    ending_index += 2
  end
  result
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
