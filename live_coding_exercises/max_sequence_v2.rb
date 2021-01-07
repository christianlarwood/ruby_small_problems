=begin
The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array of integers.
 
Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]
 
Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. If the array is made up of negative numbers, return 0 instead.

Empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray

input: array if integers
output: integer representing the maximum sum
rules:
  - empty array and array of all negatives = 0
algorithm:
  - sum_of_subarray variable and assign to 0
  - subarrays variable
  - iterate over the array and get all possible subarray combos
  - iterate through each subarray and if sum of current subarray is bigger than sum, replace sum

=end
def max_sequence(array)
  subarrays = []
  sum_of_subarray = 0
  (0...array.size).each do |index|
    (index...array.size).each do |index2|
      subarrays << array[index..index2]
    end
  end
  subarrays.each do |subarray|
    if subarray.sum > sum_of_subarray
      sum_of_subarray = subarray.sum
    end
  end
  sum_of_subarray
end
 
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
p max_sequence([-2, -3, -5, -1, -2]) == 0