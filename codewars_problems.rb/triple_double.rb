=begin
Write a function

triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

If this isn't the case, return 0

Examples
triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s

triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2

algorithm:
  - iterate over each digit in num1
    - if that digit times 111 is included in num1
      - and if that digit times 11 is included in num2
      return 1
=end
def triple_double(num1, num2)
  num1_string = num1.to_s
  num2_string = num2.to_s
  num1_string.chars.each do |digit|
    return 1 if num1_string.include?(digit * 3) && num2_string.include?(digit * 2)
  end
  0
end


p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
