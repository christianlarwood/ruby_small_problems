=begin
algorithm:
  - initialize a result variable and assign an empty hash with Hash.new(0)
  - split the string into words and iterate over the array of words
    - invoke `[]` on result and pass in word.size to give us our key and += 1 to increment the value by 1
  - return result hash
=end
def word_sizes(string)
  result = Hash.new(0)
  string.split.each do |word|
    result[word.size] += 1
  end
  result
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

# letter counter part 2
def word_sizes(string)
  result = Hash.new(0)
  string.split.each do |word|
    new_word = word.gsub(/[^a-z]/i, '')
    result[new_word.size] += 1
  end
  result
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}