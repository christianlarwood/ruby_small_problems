=begin
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

algorithm:
  - result variable
  - iterate through each char, ignore caps
    - if char count > 1, then send char with ")" to result
    - else send "("
  - return result string

=end
def duplicate_encode(string)
  string = string.downcase
  result = ''
  string.chars.each do |char|
    new_char = string.count(char) > 1 ? ")" : "("
    result += new_char
  end
  result
end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
