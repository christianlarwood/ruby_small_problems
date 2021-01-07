=begin
- iterate over each element in the array and multiply by the other elements
  - use reduce/inject to find the product
- divide the produce by the number of elements in the array

=end
def show_multiplicative_average(array)
  product = array.reduce(:*).to_f
  average = product / array.size
  format('%.3f', average)
end

puts show_multiplicative_average([3, 5])
# The result is 7.500

puts show_multiplicative_average([6])
# The result is 6.000

puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667