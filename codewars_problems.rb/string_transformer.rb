=begin
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:

"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.
rules:
  - change case of every char
  - reverse the order of the words
algorithm:
  - reverse_each on string
    - iterate over every char in the word
      - if char is capitalized, lowercase it
      - if char is lowercase, capitalize it
      - if char is neither, add it to the string
  - return result string

=end
def string_transformer(string)
  result = []
  string.chars.each do |char|
    if char =~ /[a-z]/
      result << char.upcase
    elsif char =~ /[A-Z]/
      result << char.downcase
    else
      result << char
    end
  end
  result.join
end



p string_transformer('Example string') == 'STRING eXAMPLE'
p string_transformer('  Example   string  ')