=begin
Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.

Input: string
Output: hash

Rules:
  - sort the hash from highest to lowest
  - case insensitive and ignore special chars + spaces

Approach:
  - create a new hash
  - iterate over the chars in the string and if the total count is the same as another letter, add both to an array
  - return the sorted hash

Algorithm:
  - initialize a new hash
  - clean up the string to only be letters and numbers
  - split the string into chars and iterate over the string of chars
    - push the total count of the char in string as the key and the char as a value
  - return the sorted hash


=end
# def get_char_count(string)
#   hash = Hash.new(0)
#   new_string = string.gsub(/[^a-z0-9]/i, '').downcase
#   new_string.chars.each do |char|
#     total = new_string.count(char)
#     if hash.include?(total)
#       hash[total] += [char]
#     else
#       hash[total] = [] << char
#     end
#   end
#   hash.each do |_, v|
#     v.uniq!
#     v.sort!
#   end
#   hash.sort.reverse.to_h
# end

# def get_char_count(string)
#   clean_string = string.downcase.gsub(/[^a-z0-9]/, '').chars
#   unique_chars = clean_string.uniq

#   unique_chars.sort.group_by { |char| clean_string.count(char) }
# end

# def get_char_count string
#   string = string.downcase.gsub(/[^0-9a-z]/, "").chars
#   uniq = string.uniq
#   new_hash = uniq.sort.group_by { |char| string.count(char) }
#   p new_hash.sort.reverse.to_h
# end

def get_char_count(string)
  clean_string = string.downcase.gsub(/[^a-z0-9]/, '')
  unique_chars = clean_string.chars.uniq
  unique_chars.sort.group_by { |char| clean_string.count(char) }
end

p get_char_count("Mississippi") #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
