=begin
Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

input: array of strings
output: array of characters that appear in each string
algo:
  - grab first word from array
  - initialize a variable array and assign to the rest of the array
  - iterate over each of the characters in the first word using select
  - iterate through the remaining words in the array with all? and
    - if the char is in each of the words, return true
      - remove the character from the each word

=end
def common_chars(array)
  new_array = array.map(&:dup)
  first_word = new_array.shift.chars
  first_word.select do |char|
    new_array.all? { |word| word.sub!(char, "") }
  end
end


p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []