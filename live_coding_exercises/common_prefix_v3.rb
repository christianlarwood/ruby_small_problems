=begin
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

Algorithm:
  - initialize result string
  - get the first word from array
  - iterate over each character in first word
    - iterate over each remaining word in array and if the char is the same as the char in the same index, add it to result string
  - return result string
=end
def common_prefix(array)
  result = ''
  first_word = array.shift
  (0...first_word.size).each do |index|
    if array.all? { |word| word[index] == first_word[index]}
      result += first_word[index]
    else
      return result
    end
  end
  result
end

puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"
