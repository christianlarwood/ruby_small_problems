=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

algorithm:
  - initialize a constant, NUMBERS with a hash of key-value pairs
  - split the string into words
  - iterate over the array of words and if a word equals a key in the hash, replace it with the number
  - 

=end
NUMBERS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(string)
  NUMBERS.keys.each do |word|
    string.gsub!(/\b#{word}\b/, NUMBERS[word])
  end
  string
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# further exploration
