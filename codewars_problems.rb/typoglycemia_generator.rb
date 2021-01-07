=begin
rules:
  - first and last chars remain in original place
  - all other chars sorted alphabetically
  - punctuation stays in the same place as it started

algorithm:
  - initialize result array
  - split each string into words
    - iterate over each word and 
      - find index of nonalphabetical chars
      - sort the inner letters alphabetically from 1..-2 index
      - insert the nonalphabetical char back into the word
      - add to result
  - join and return result array

=end
def scramble_words(string)
  result = []
  return string if string.size < 4
  string.split.each do |word|
    index_of_char = 0
    special_char = ''
    word.chars.each do |char|
      if char =~ /[^a-z]/i
        index_of_char = word.chars.find_index(char)
        special_char = char
        word.sub!(char, '')
      end
    end
    sorted_substring = word[1..-2].chars.sort.join
    new_word = word[0] + sorted_substring + word[-1]
    final_word = new_word.insert(index_of_char, special_char)
    result << final_word
  end
  result.join(' ')
end

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
