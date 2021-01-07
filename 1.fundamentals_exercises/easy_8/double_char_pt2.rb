=begin
algorithm
  - declare a constant variable, CONSONANTS and add all consonants to the array object
  - initialize a variable `result` and assing to it an empty string
  - split the string into chars and iterate over each char
    - conditional statement:
      - if CONSONANTS.include?(char)
        - then double the char and add to result
      - else add char to result
  - return result
=end
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      result += char * 2
    else
      result += char
    end
  end
  result
end


puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""