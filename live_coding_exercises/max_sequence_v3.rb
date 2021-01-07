
=begin
The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. If the array is made up of negative numbers, return 0 instead.
Empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray

Input: array of integers
Output: integer representing the largest sum of a substring in array
Approach:
  - find all substrings in array
  - return largest sum of a substring from array

Algorithm:
  - initialize a variable, sum, and assign to integer 0
  - iterate through a range to get the starting_index
    - iterate through a range again to get the end_index
      if the sum of the current substring > sum, replace it
  - return sum

=end
def max_sequence(array)
  sum = 0
  (0...array.size).each do |start_index|
    (start_index...array.size).each do |end_index|
      substring = array[start_index..end_index]
      if substring.sum > sum
        sum = substring.sum
      end
    end
  end
  sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
