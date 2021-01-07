=begin
Write a method that can rotate the last n digits of a number. Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

- initialize a variable `array` and split the number using .digits.reverse
- initialize a result variable and assign to the return value of invoking
- initialize index variable and assign it to the value of (array.size - n - 1)
- using parallel assignment to rotate the integers
  - array[-1], array[index] = array[index], array[-1]
- return array

=end
# def rotate_rightmost_digits(number, n)
#   array_of_nums = number.digits.reverse
#   index = array_of_nums.size - n
#   digit = array_of_nums.slice!(index)
#   (array_of_nums << digit).join.to_i
# end

# official answer
def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_rightmost_digits(number, n)
  array_of_nums = number.digits.reverse
  array_of_nums[-n..-1] = rotate_array(array_of_nums[-n..-1])
  array_of_nums.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917