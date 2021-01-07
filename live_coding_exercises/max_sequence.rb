=begin
The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. If the array is made up of negative numbers, return 0 instead.
Empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray

algorithm:
  - initialize a result variable and assign to integer 0 
  - iterate over each of the elements in the array using a range of 0...array.size. Each value will be our starting index for the next iteration
    - iterate over another range starting from the index to array.size
    - push sum of chosen elements to result if sum of elements > result

=end
def max_sequence(array)
  result = 0
  (0...array.size).each do |index|
    (index...array.size).each do |index2|
      result = array[index..index2].sum if array[index..index2].sum > result
    end
  end
  result
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12