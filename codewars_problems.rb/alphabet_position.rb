=begin
In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

algorithm:
  - initialize a result array
  - initialize an alphabet array
  - iterate through each char in the string
    - find it's index in the alphabet array and add to array
  - join and return array

=end
def alphabet_position(string)
  alphabet = ('a'..'z').to_a
  result = []
  string.downcase.chars.each do |char|
    if alphabet.include?(char)
      position = (alphabet.find_index(char)) + 1
      result << position
    end
  end
  result.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
