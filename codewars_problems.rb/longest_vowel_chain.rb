=begin
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou. 

input: string
output: integer representing the longest substring of vowels

algorithm:
  - initialize a longest_vowel_substring = 0
  - iterate once
    - iterate again
      - if the substring is only vowels and it's size is bigget than longest, replace with new size
  - return longest

=end
def solve(string)
  longest_vowel_substring = 0
  (0...string.size).each do |start_index|
    (start_index...string.size).each do |end_index|
      substring = string[start_index..end_index]
      if substring.size == substring.count('[aeiou]') &&
        substring.size > longest_vowel_substring
        longest_vowel_substring = substring.size
      end
    end
  end

  longest_vowel_substring
end


p solve('codewarriors') == 2
