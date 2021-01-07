=begin
Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

input: array of strings
output: array of common chars
algorithm:
  - copy the array
  - grab the first word
  - grab the rest of the array
  - iterate over each char in the first word
    - if char is in each subsequent word, return true
      - remove char from each word

=end
def common_chars(array)
  array = array.map { |word| word.dup }
  first_word = array.shift.chars

  first_word.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []