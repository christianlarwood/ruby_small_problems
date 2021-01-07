=begin
- featured number is a multiple of 7 and whose digits occur once each
- iterate through a range
  - if the number is divisible by 7 and > num and does not contain dupe digits, return number and break out of loop
    - use num.digits.count(number) > 1 if true it's not a featured number
  - else return error message
=end
def featured(number)
  (7..).each do |num|
    if is_unique_number(num) && num > number
      return num
      break if number >= 9_876_543_210
    end
  end
  puts "There is no possible number that fulfills those requirements"
end

def is_unique_number(num)
  num % 7 == 0 && !duplicate_digits?(num) && num.odd?
end

def duplicate_digits?(num)
  num.digits.each do |digit|
    if num.digits.count(digit) > 1
      return true
    end
  end
  false
end

# puts duplicate_digits?(10231)

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999)

