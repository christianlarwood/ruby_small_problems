=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
algorithm:
  - initialize a variable sum and assign integer 0
  - iterate through the array and add current integer to sum
    - invoke map on array and pass in do..end block with one parameter, num
      - within the block reassign sum += num
  - return new array

=end
# def running_total(array)
#   sum = 0
#   result = array.map do |num|
#     sum += num
#   end
#   result
# end

def running_total(array)
  p array.each_with_index { |_, index| array[0..index].reduce(:+) }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []