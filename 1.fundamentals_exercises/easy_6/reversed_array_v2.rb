def reverse!(array)
  middle = array.size / 2
  start_index = 0
  end_index = -1
  while start_index < middle
    array[end_index], array[start_index] = array[start_index], array[end_index]
    start_index += 1
    end_index -= 1
  end
  array
end


list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

def reverse(array)
  result = []
  array.reverse_each do |element|
    result << element
  end
  result
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []     