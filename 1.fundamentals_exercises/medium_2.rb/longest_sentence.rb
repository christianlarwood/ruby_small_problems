=begin
Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

- read the txt file
- initialize variable `sentences` and assign to return value of iterate over the text and split into separate sentences
- initialize variable `length` and assign to return value of iterate over each sentence and return the size
- invoke max method on length

=end
file_data = File.read('frankenstein.txt').split(/[.?!]/)

def longest_sentence(array)
  array.sort_by do |sentence|
    sentence.split.size
  end
  # array
  puts array.last
  lengths = array.map do |sentence|
    sentence.split.size
  end
  lengths.max
end

puts longest_sentence(file_data)

# official answer
text = File.read('frankenstein.txt')
sentences = text.split(/[.?!]/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
