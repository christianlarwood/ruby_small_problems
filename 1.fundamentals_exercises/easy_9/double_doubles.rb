=begin
Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.
algorithm:
  - initialize a variable `middle` and assign it to the return value of num.to_s.size/2 
  - initialize first half as num.to_s[0..middle - 1]
  - initialize second half as num.to_s[middle..-1]
  - conditional statement
    - if first_half == second_half
        num
    - else return num * 2
=end
def twice(num)
  return num * 2 if num.to_s.size == 1
  middle = num.to_s.size / 2
  first_half = num.to_s[0..middle - 1]
  second_half = num.to_s[middle..-1]
  if first_half == second_half
    num
  else
    num * 2
  end
end

# puts twice(37) == 74
# puts twice(44) == 44
# puts twice(334433) == 668866
# puts twice(444) == 888
# puts twice(107) == 214
# puts twice(103103) == 103103
# puts twice(3333) == 3333
# puts twice(7676) == 7676
# puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10