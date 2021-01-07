=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

algorithm:
  - iterate over each char and remove any that are non-alphanumeric, replacing them with spaces

=end
def cleanup(string)
  result = []
  string.chars.each do |char|
    if char =~ /[a-z0-9]/
      result << char
    else
      result << ' '
    end
  end
  final = []
  result.each_with_index do |char, index|
    n = index + 1
    if char != result[n]
      final << char
    end
  end
  final.join
end

# official solution
# ALPHABET = ('a'..'z').to_a

# def cleanup(string)
#   result = []
#   string.chars.each do |char|
#     if ALPHABET.include?(char)
#       result << char
#     else
#       result << ' ' unless result.last == ' '
#     end
#   end
#   result.join
# end

# def cleanup(string)
#   string.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

puts cleanup("---what's my +*& line? hello!") == ' what s my line hello '