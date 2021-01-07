=begin
Input: array
Output: nil

Rules:
  - must mutate the array and sort

Approach:
  - loop
  - iterate over the array
    - if the previous element is greater than current element, swap them
  - stop when all elements have been swapped

Algorithm:
  - initialize a loop
      - initialize a swapped variable
      - iterate over the indices in the array
        - if the current element is greater than the prvious element, swap them
          - change swapped to true
      - break out of loop if swapped is false
  - return array

=end
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      if array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      end
    end
    break if !swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)