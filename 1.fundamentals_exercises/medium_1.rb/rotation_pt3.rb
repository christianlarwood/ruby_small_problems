=begin
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

735291
352917
329175
321759
321597
321579

alorithm:
  - split number into array of integers
  - initialize variable start_index and assign to 0
  - iterate over the array of integers
    - rotate based on increasing index

=end
def rotate(array)
  array[1..-1] << array[0]
end

def rotate_rightmost_digits(number, n)
  array_of_nums = number.digits.reverse
  array_of_nums[-n..-1] = rotate(array_of_nums[-n..-1])
  array_of_nums.join.to_i
end

def max_rotation(number)
  n = number.digits.size
  n.downto(2) do |num|
    number = rotate_rightmost_digits(number, num)
  end
  p number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845