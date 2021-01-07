=begin
What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. 

input: word, array
output: array of anagrams

algorithm:
  - result array
  - iterate over the array of strings
    - if the count of characters in the string does not equal the count of characters in the word, break out of the current iteration
    else, add string to array
  - return result array
=end
def anagrams(word, array)
  array_of_anagrams = []
  array.each do |string|
    flag = true
    string.chars.each do |char|
      if word.count(char) != string.count(char)
        flag = false
      end
    end
    if flag == true
      array_of_anagrams << string
    end
    flag = true
  end
  array_of_anagrams
end

def anagrams(word, array)
  array.select { |w| word.chars.sort = w.chars.sort }
end


p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []
