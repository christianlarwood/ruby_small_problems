# reverse odd length words

def reverse(string)
  array_of_words = string.gsub('.', '').split
  # p array_of_words
  result = []
  array_of_words.each_with_index do |word, index|
    if index.odd?
      result << word.split('').reverse.join
    else
      result << word
    end
  end
  result.join(" ") + "."
end

p reverse("whats the matter with kansas.")