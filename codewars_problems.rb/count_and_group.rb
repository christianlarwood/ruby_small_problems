=begin
Write a method that takes a string as an argument and groups the number of time each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.

algorithm:
  - initialize a result variable with a hash
  - iterate through each character in the string
    - add the count as key and char as value
  - return result hash

=end
def get_char_count(string)
  result = {}
  new_string = string.gsub(/[^a-z0-9]/i, '').downcase
  new_string.chars.each do |char|
    total_count = new_string.count(char)
    if result.include?(total_count)
      result[total_count] += [char]
    else
      result[total_count] = [char]
    end
  end
  result.each do |_, v|
    v.uniq!
    v.sort!
  end
  result
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
