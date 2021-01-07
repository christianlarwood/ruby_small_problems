=begin
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

algorithm:
  - square_of_sum = 
  - sum_of_squares = 
  - iterate through the range (1..num)
    - within the block square the number and add it to sum_of_squares
    - add num to square_of_sum
  - return difference between square_of_sum and sum_of_squares

=end
def sum_square_difference(num)
  square_of_sum = 0
  sum_of_squares = 0
  (1..num).each do |number|
    sum_of_squares += number**2
    square_of_sum += number
  end
  square_of_sum**2 - sum_of_squares
end

puts sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150