=begin
# You are given an array which contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

# You can asume there is never an empty array and there will always be an integer.

Input: array of integers
Output: array of integers

Rules:
  - sum only numbers that are the same and consecutive
  - push solo integers to the result array

Approach:
  - iterate over the array and compare each integer to the one next to it.
    - if the integer before it is the same, increment the current last value in the result array by the value in the array
    - if they are different, add the integer to the new array
  - return new array

Algorithm:
  - initialize a variable, result, and assign to it the first value in the array
  - iterate over the array's indices and compare the current element to the previous one
    - if the elements are the same, increment the last element in the result array by the current element in the array
    - if the elements are not the same, just add the element to the result array
  - return the result array

=end
def sum_consecutives(array)
  result = [array[0]]
  1.upto(array.size - 1) do |index|
    if array[index - 1] != array[index]
      result << array[index]
    else
      result[-1] = result[-1] + array[index]
      # result[-1] += array[index]
    end
  end
  result
end

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]