=begin
algorithm:
  - initialize a result variable
  - split string into words
  - iterate over array of words
    - using parallel assignment swap the first and last char in each word
    - push word to result array
  - join result array
=end

def swap(string)
  result = []
  string.split.each do |word|
    word[-1], word[0] = word[0], word[-1]
    result << word
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'