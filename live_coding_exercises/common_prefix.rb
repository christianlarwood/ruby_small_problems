=begin
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string, 

All given inputs are in lowercase letters a-z.

input: array of strings
output: string
algorithm:
  - initialize variable result and assign to it an empty string
  - grab the first word
  - iterate over the characters in the first word
    - if the character is in the other words in the array, add char to result, remove character from those words
  - return result
=end
def common_prefix(array)
  result = ''
  first_word = array.shift.chars
  first_word.size.times do |index|
    if array.all? { |word| word[index] == first_word[index] }
      result += first_word[index]
    else
      return result # add a return once chars don't match
    end
  end
  result
end


puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"

