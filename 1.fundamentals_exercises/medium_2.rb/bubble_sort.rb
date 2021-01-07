=begin
Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

algorithm:
  - initialize a variable, swapped and assign to true
  - iterate through the array using each_with_index
    - initialize end_index variable and assign to index + 1
    - compare first element to second using index and index + 1
      - if first is greater than second, swap places
        - reassign swapped variable to true
        - else reassign to false if no swap


=end
def bubble_sort!(array)
  swapped = []
  max_index = array.size
  while swapped.all? { |element| element == false }
    (0...max_index).each do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped << true
      end
      swapped << false
    end
    swapped = []
  end
  p array
end

# def bubble_sort!(array)
#   size = array.length
#   loop do
#     swapped = false
#     (1...size).each do |index|
#       if array[index - 1] > array[index]
#         array[index - 1], array[index] = array[index], array[index - 1]
#         swapped = true
#       end
#     end
#     size -= 1
#     break unless swapped
#   end
#   nil
# end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler) 