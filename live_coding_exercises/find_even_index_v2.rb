=begin
You are given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1. Empty arrays are equal to 0 in this problem. 

input: array of integers
output: index 

algorithm:
  - iterate through the array
  - conditional statements:
    - if index is 0 or array.size - 1 and sum of the rest of the array equals the index, return index
    - if sum of subarray to right of index equals sum of subarray to left of index, return index
    - else return -1

=end
def find_even_index(array)
  return 0 if array.empty?
  (0...array.size).each do |index|
    left_array = array[0..index - 1].sum
    right_array = array[index + 1..-1].sum
    if index == 0
      return index if array[index] == right_array
    end
    if index == array.size - 1
      return index if array[index] == left_array
    end
    if index > 0 && index < array.size - 1
      return index if left_array == right_array
    end
  end
  -1
end


p find_even_index([]) == 0
p find_even_index([2, 1, 1]) == 0
p find_even_index([1, 1, 2]) == 2
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([30, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3