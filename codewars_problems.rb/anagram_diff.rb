=begin
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.

approach:
  - find the common letters between each word (1 for 1)
  - subtract the difference from each string size and add together

algorithm:
  - initialize a same_chars_count variable
  - iterate through each char in the first word
    - if there's the same char in the 2nd word, increment counter and remove that first instance
  - return the sum of string2.size + string1.size - count

=end
def anagram_difference(string1, string2)
  same_chars_count = 0
  string1.chars.each do |char|
    if string2.include?(char)
      string2.sub!(char, '')
      same_chars_count += 1
    end
  end
  string2.size + (string1.size - same_chars_count)
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
