# def swap(string)
#   result = []
#   string.split.each do |word|
#     if word.length == 1
#       result << word
#     else
#       result << word[-1] + word[1..-2] + word[0] + " "
#     end
#   end
#   p result[0..-2]
# end

def change_word(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  new_string = string.split.map do |word|
    change_word(word)
  end
  new_string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'