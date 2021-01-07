=begin
# You are given an array which contains only integers (positive and negative). Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

# You can asume there is never an empty array and there will always be an integer.

Approach:
  - iterate over each integer in the array
  - if the integer is same as one before it, increment the last integer in result by the current integer in the array.
    - else add the integer to result

Algorithm:
  - initialize a result variable and assign to it the first element in the array
  - iterate over the other elements in the array starting at index 1
    - compare the current element to the previous element
      - if they are the same increment the last element in result by the current element in array
      - if they are different, add current element to result array
  - return result array

=end
def sum_consecutives(array)
  result = [array[0]]
  1.upto(array.size - 1) do |index|
    if array[index - 1] == array[index]
      result[-1] += array[index]
    else
      result << array[index]
    end
  end
  result
end

p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]