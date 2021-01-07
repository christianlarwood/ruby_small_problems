=begin
Write a method that finds all substrings in a string, no 1 letter words.

algorithm:
  - iterate over the string starting from the first character using a range
    - iterate over the string starting from the first character
      - if substring.size > 1 then add it to our new array
  - return new array

=end
def substrings(string)
  result = []
  (0...string.size).each do |index|
    (index...string.size).each do |index2|
      result << string[index..index2] if string[index..index2].size > 1
    end
  end
  result
end


p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
