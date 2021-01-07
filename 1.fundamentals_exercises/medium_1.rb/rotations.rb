=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified

rules:
  - cannot modify the original array
  - rotate just the first and move it to the end of the array
algorithm:
  - grab the first element us element reference to return a new array
  - push or concatenate the first element to the end of the array


=end
def rotate_array(array)
  array[1..-1] << array[0]
end

# p rotate_array([7, 3, 5, 2, 9, 1])# == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]

=begin
algorithm:
  - invoke rotate_array and pass in only the part of the array you want to rotate e.g. (-2..-1)
  - return the new array

=end
def rotate_rightmost_digits(number, start_index)
  array = number.to_s.chars
  array[-start_index..-1] = rotate_array(array[-start_index..-1])
  array.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

=begin
algo:
  - initialize a variable, number, and assign it to number
  - we only care about iterating down to 2
  - invoke rotate_rightmost_digits and pass in the num and the size of the number as arguments
    - after each iteration, reassign the return value of invoking the method to number
  - return number

=end
def max_rotation(number)
  max_rotation = number
  length = number.digits.size
  length.downto(2) do |rotation|
    max_rotation = rotate_rightmost_digits(max_rotation, rotation)
  end
  max_rotation
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845