=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

input: a string of words
output: a new string with the words in reverse order
problem: write a method that takes one argument, a string of words, and returns a new string with the words in reverse order
algorithm: 
  - define a method with one argument
  - split the string of words 
  - call reverse method on the string and join
  - return new string 

=end

# def reverse_sentence(string)
#   string.split.reverse.join(" ")
# end

def reverse_sentence(string)
  split_string = string.split
  result = []
  counter = split_string.size - 1
  loop do 
    break if counter < 0
    result << split_string[counter]
    counter -= 1
  end
  result.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'