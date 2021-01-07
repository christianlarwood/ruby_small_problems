=begin
input: an array of elements
output: a new array with the elements in reverse order
algorithm:
  - initialize a result variable and assign to it an empty array
  - iterate through the elements in the array
    - initialize variable `n` and assign it to the index
    - push the element at index `n` from the end of the array to the result array 
    - decrement the index
  - return result array
=end
def reverse(array)
  result = []
  index = -1
  loop do
    break if result.length == array.length
    result << array[index]
    index -= 1
  end
  result
end

# official solution
def reverse(array)
  result = []
  array.reverse_each { |element| result << element }
  result
end

# further exploration
def reverse(array)
  result = array.each_with_object([]) do |element, arr|
    arr.unshift(element)
  end
  result
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []