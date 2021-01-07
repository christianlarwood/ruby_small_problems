=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.
algorithm:
  - initialize an array of chars
  - split the string into words and iterate over each word
    - split the word into chars and iterate over each char
      - find the index + 1 value of the char in the alphabet array and add it to the word's sum
      - if the word's sum is greater than the current sum, replace the word
      - reset sum to 0
  - return the winning word
=end
def high(string)
  alphabet = ("a".."z").to_a
  highest_value_word = ''
  highest_value = 0
  string.split.each do |word|
    total_word_value = 0
    word.chars.each do |char|
      char_value = alphabet.find_index(char) + 1
      total_word_value += char_value
    end
    if total_word_value > highest_value
      highest_value = total_word_value
      highest_value_word = word
    end
    total_word_value = 0
  end
  highest_value_word
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'
