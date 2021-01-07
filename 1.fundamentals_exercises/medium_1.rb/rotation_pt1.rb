=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

- initialize a result variable and assign to it an empty array
- push the array with indeces between 1..-1 + array.pop to result
- return result

=end
def rotate_array(array)
  array[1..-1] << array[0]
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]  

# further exploration
# rotate string
def rotate_string(string)
  result = rotate_array(string.split(''))
  result.join
end

puts rotate_string('abcdef') == 'bcdefa'

# rotate integers
def rotate_integer(number)
  result = rotate_array(number.digits.reverse)
  result.join.to_i
end

puts rotate_integer(12345) == 23451