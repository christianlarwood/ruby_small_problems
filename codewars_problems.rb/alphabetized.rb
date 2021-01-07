=begin
Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing the english alphabet letters.

Input: string of chars
Output: sorted string of chars w/o spaces

Rules:
  - only alphabetical letters
  - alphabetical, but uppercase first
  - no spacs

Approach:
  - remove all non alphbetical chars
  - sort chars in alphabetical order based on where they appear
  - return sorted string

Algorithm:
  - initialize a result variable and assign to an empty string
  - 

=end
# def alphabetized(string)
#   string = string.gsub(/[^a-z]/i, '').chars
#   p string
#   sorted = string.sort_by(&:downcase).join
#   p sorted
# end

def alphabetized(string)
  string.delete("^A-Za-z").chars.sort_by { |char| char.downcase}.join
end

# describe "Basic tests" do
# p alphabetized("") == ""
# p alphabetized(" ") == ""
# p alphabetized(" a") == "a"
# p alphabetized("a ") == "a"
# p alphabetized(" a ") == "a"
# p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") #== "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
# p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("The Holy Bible") #== "BbeehHilloTy"
# p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
