=begin
Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.
algorithm:
  - initialize a result variable and assign it to the return value of:
    - invoking map on the split string and passing in do..end block with one parameter
    - return word + " " + word.size.to_s

=end
def word_lengths(string)
  result = string.split.map do |word|
    word + " " + word.size.to_s
  end
  result
end


puts word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

puts word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

puts word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

puts word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

puts word_lengths("") == []