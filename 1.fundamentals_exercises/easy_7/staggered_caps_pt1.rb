=begin
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize variable `result` and assign to it an empty string
  - split the string into characters and iterate over each
    - if index is even capitalize, else lowercase
  - return result

=end

# Code:
def staggered_case(string)
  result = ''
  string.chars.each_with_index do |char, index|
    if index.even?
      result << char.upcase
    else
      result << char.downcase
    end
  end
  p result
end

# further exploration
def staggered_case(string, choice)
  result = ''
  start = ''
  if choice == 'up'
    start = index.even?
  else
    start = index.odd?
  end
  string.chars.each_with_index do |char, index|
    if start
      result << char.upcase
    else
      result << char.downcase
    end
  end
  p result
end

# Test Cases:
puts staggered_case('I Love Launch School!', 'down') == 'I LoVe lAuNcH ScHoOl!'
# puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'