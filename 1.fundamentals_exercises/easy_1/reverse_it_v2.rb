def reverse_sentence(string)
  result = []
  string.split.reverse_each { |word| result << word}
  result.join(' ')
end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_words(string)
  result = []
  string.split.each do |word|
    if word.size >= 5
      result << word.reverse
    else
      result << word
    end
  end
  result.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School') 