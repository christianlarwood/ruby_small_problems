=begin
You are given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1. Empty arrays are equal to 0 in this problem. 

input: array if integers
output: an integer representing an index

algorithm:
  - iterate through the array by index
    - if the index is 0 or array.length - 1
      - check if sum of all values to the right or left are equal. If not continue
    - while index is between 1 and -2
      - look at integer in 0 index and compare to integers in 2..-2
        - if same return index, else continue

=end
def find_even_index(array)
  return 0 if array.empty?
  (0...array.size).each do |index|
    left_array = array[0..index - 1]
    right_array = array[index + 1..-1]
    
    if index == 0
      return index if array[index] == right_array.sum
    end
    if index == array.size - 1
      return index if left_array.sum == array[index]
    end
    if index > 0 && index < array.size
      return index if left_array.sum == right_array.sum
    end
  end
  -1
end
p find_even_index([]) == 0
p find_even_index([1, 1, 2]) == 2
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([30, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3