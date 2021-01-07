=begin
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

algorithm:
  - iterate through each char
    - if a letter preceeds a # then remove both, permanently
  - return final string

=end
def clean_string(string)
  result = string
  array_of_chars = string.chars
  array_of_chars.each_with_index do |char, index|
    if char =~ /[a-z]/i && array_of_chars[index + 1] == '#'
      p array_of_chars.slice!(index, 2)
      # result.sub!(array_of_chars[index..index + 1].join, '')
    end
  end
  # p result
  p array_of_chars
end

p clean_string('abc#d##c') #== "ac"
# p clean_string('abc####d##c#') == ""
