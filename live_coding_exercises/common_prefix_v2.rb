=begin
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string,
 
All given inputs are in lowercase letters a-z.

input: array of strings
output: string of all common chars
algorithm:
  - initialize result variable and assign to it an empty string
  - iterate through each of the words in the array
    - if the char is at the same index for every word, add it to result
    - if the char is not at the same index in every word, return result
  - return result

=end
def common_prefix(array)
  result = ''
  first_word = array.shift.chars
  first_word.size.times do |index|
    if array.all? { |word| word[index] == first_word[index] }
      result += first_word[index]
    else
      return result
    end
  end

  return result
end


p common_prefix(["flower", "flow", "fliwht"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
