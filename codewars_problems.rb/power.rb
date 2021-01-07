=begin
Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

algo:
  - result = 1
  - invoke power on times method and within the block 
    - multiply the sum by number
=end
def power(number, power)
  return nil if power < 0
  result = 1
  power.times { result *= number }
  result
end


p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil

