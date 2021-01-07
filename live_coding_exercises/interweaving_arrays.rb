=begin
# Write a method that combines two Arrays passed in as arguments and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation. 
# You may assume that both input Arrays are non-empty and that they have the same number of elements.

input: 2 arrays
output: single array with all elements
algo:
  - initialize a variable `result` and assign to it an empty array
  - iterate over the first array
    - add the first element to a new array
    - using the index from the first array, add the element from the second array to the new array as well
  - return result array

=end
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element
    result << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, "a", 2, "b", 3, "c"]