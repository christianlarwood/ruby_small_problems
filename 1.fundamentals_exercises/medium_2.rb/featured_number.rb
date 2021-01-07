=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

input: number
output: next highest featured number
rules:
  - must be a multiple of 7
  - digits occur once each
  - number must be odd
approach:
  - iterate over a range of numbers
  - if the number is a featured number, return it
    - featured number method
  - return error message if no featured number can be found

alogrithm:
  - iterate over a range of numbers (n..)
    - pass each number to featured_num method
      - within the method conditional:
        - if num % 7 == 0 &&
        - num.digits.all? { |digits| num.digits.count(digit) == 1 }
  - return error message if no featured number can be found

=end
def featured(number)
  (number + 1..).each do |next_num|
    return next_num if featured_num(next_num)
    break if next_num >= 9876543210
  end
  puts "Error"
end

def featured_num(next_num)
  next_num.odd? && 
  next_num % 7 == 0 && 
  next_num.digits.all? do |digit|
    next_num.digits.count(digit) == 1
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)