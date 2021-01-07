=begin
Input: array of elements
Output: the same array with the elements mutated and in sorted order

Approach:
  - iterate over each element in the array
  - if element1 is greater than element2, swap their positions in the array
  - return the array

Algorithm:
  - iterate over the array's index starting at 1 and upto the array size
    - compare the previous element in the previous index to the current element
      - if previous element is greater, swap the elements using parallel assignement
      - else do nothing
  - return the array

=end
def bubble_sort!(array)
  length = array.size - 1
  loop do
    swapped = false
    1.upto(length) do |index|
      if array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)