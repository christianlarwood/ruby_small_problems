=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

If you liked this kata, check out part 2!!

algorithm:
  - initialize an empty array
  - split the number into digits and iterate over each digit
    - multiply the digit by 10 to the index power and push to array
  - join array with " + "
=end
def expanded_form(number)
  result = []
  number.digits.each_with_index do |digit, index|
    if digit != 0
      result << digit * 10**index
    end
  end
  result.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
