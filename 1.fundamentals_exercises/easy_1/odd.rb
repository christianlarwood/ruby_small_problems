=begin
Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

input: one integer
output: boolean
problem: write a method that takes one integer argument and returns true if the integer is odd and false if not. 
algorithm:
  - define an integer that takes one parameter, num
  - calculate if the integer is divided by 2 and has 1 left over it's odd

=end

def is_odd?(num)
  # num % 2 == 1
  num.remainder(2) == 1 || num.remainder(2) == -1
end


puts is_odd?(2) == false  # => false
puts is_odd?(5) == true    # => true
puts is_odd?(-17) == true  # => true
puts is_odd?(-8) == false   # => false
puts is_odd?(0) == false    # => false
puts is_odd?(7) == true