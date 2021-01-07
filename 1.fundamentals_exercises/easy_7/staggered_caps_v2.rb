=begin
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

- initialize a result variable and assign to it an empty string
- split the string into chars and iterate over each char
- conditional statement:
  - if index is even then upcase char and add to result
  - else downcase and add to result
- return result
=end
# def staggered_case(string)
#   result = ''
#   string.chars.each_with_index do |char, index|
#     letter = index.even? ? char.upcase : char.downcase
#     result += letter
#   end
#   result
# end

# puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
- initialize result variable and assign to it an empty string
- initialize an uppercase variable and assign true
- split the string and iterate over each char
    - if uppercase = true then upcase the char
    - if false, downcase char
    - reassign uppercase to opposite value
- return result

=end
def staggered_case(string)
  result = ''
  uppercase = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      letter = uppercase ? char.upcase : char.downcase
      result += letter
      uppercase = !uppercase
    else
      result += char
    end
  end
  result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'