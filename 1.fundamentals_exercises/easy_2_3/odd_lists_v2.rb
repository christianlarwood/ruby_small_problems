=begin
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.
input: array of elements
output: new array with only every other element
algorithm:
  - initialize a variable `result` and assign to it an empty array
  - iterate over each element
    - if the element's index is even push it to result array
  - return result array

=end
def oddities(array)
  result = []
  array.each_with_index do |element, index|
    if index.even?
      result << element
    end
  end
  result
end

def oddities(array)
  result = []
  index = 0
  loop do 
    break if index == array.size
    if index.even?
      result << array[index]
    end
    index += 1
  end
  result
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []