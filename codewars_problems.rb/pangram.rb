=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

input: string
output: boolean

algorithm:
  - create an alphabet array
  - split the string into chars and iterate over each char
    - if char is in the string and in the alphabet, increase counter by 1
      - remove all instances of char from string
  - count = alphabet.size



=end
def panagram?(string)
  new_string = string.downcase.chars.uniq.join
 
  alphabet = ('a'..'z').to_a
  count = 0
  new_string.chars.each do |char|
    if alphabet.include?(char)
      count += 1
      new_string.gsub!(char, '')
    end
  end

  count == alphabet.size
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true