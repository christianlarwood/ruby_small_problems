=begin
Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

algorithm:
  - initialize a result variable and assign to it an empty array
  - iterate over the array and pass each word to the block
    - split the word into chars and iterate over each char
    - check if char is included in the next word
      - if yes, move to the next word and check if char is in that word, etc
        - if in all words, push char to result array
      - if no, break out of the loop and move to the next char
  - return result array


=end
def common_chars(array)
  result = []
  first_word = array[0]
  new_array = array[1..-1]
  char_count = 0
  first_word.chars.each do |char|
    new_array.each do |word|
      if word.chars.include?(char)
        char_count += 1
        index_of_char = word.chars.find_index(char)
        word[index_of_char] = '1'
      end
    end
    if char_count == new_array.size
      result << char
    end
    char_count = 0
  end
  result
end

# student solution
def common_chars(array)
  # make a copy of the array
  array = array.map { |word| word.dup }
  # grab first word
  chars = array.shift.chars

  # iterate over the chars using select
  chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []