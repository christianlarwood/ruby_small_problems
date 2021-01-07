=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, and false if not. A substring is longer than 1 characters.


Input: 2 strings
Output: boolean

Rules:
  - strings without chars don't count
  - case insensitive
  - substring is greater than 1 character

Approach:
  - iterate over chars in the first word and compare to the second word
  - if the char exists in both, increase count by 1
    - remove the char in the second string so we don't double count it
  - return true if count > 1

Algorithm:
  - initialize a variable, common_chars_count = 0
  - split the first string into chars and iterate over each char
    - if current char is in string2, increment count by 1 and remove char from string2
    - break out of loop if count > 1
  - return count > 1
=end
def common_substrings(string1, string2)
  common_chars_count = 0
  string1.downcase.chars.each do |char|
    if string2.downcase.include?(char)
      string2.sub!(char, '')
      common_chars_count += 1
    end
    break if common_chars_count > 1
  end
  common_chars_count > 1
end

p common_substrings('Something', 'Fun') == false
p common_substrings('Something', 'Home') == true
p common_substrings('Something', ' ') == false
p common_substrings('BANANA', 'banana') == true
p common_substrings('test', 'llt') == false
p common_substrings(' ', ' ') == false
p common_substrings('134567', '541265') == true
p common_substrings('lemur', 'lpesomtur') == true