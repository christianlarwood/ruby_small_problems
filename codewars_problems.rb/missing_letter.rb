=begin

Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Example:

['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'

["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"
(Use the English alphabet with 26 letters!)

algorithm:
  - find the starting index of the first letter in the array based on the alphabet array
  - start iterating over the alphabet array from that index and compare the char in alphabet to the char in the array, if they are different return the alphabet char


=end
# def find_missing_letter(array)
#   alphabet = ('a'..'z').to_a
#   starting_index = alphabet.find_index(array[0].downcase)
#   array.each do |char|
#     if char == char.downcase
#       return alphabet[starting_index] if char.downcase != alphabet[starting_index]
#     else
#       return alphabet[starting_index].upcase if char.downcase != alphabet[starting_index]
#     end
#     starting_index += 1
#   end
# end

def find_missing_letter(array)
  ((array.first..array.last).to_a - array).first
end


p find_missing_letter(['a','b','c','d','f'])
p find_missing_letter(['O','Q','R','S'])