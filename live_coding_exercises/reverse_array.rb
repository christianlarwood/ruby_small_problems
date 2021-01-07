# non_mutating
def reverse_array(array)
  result = []
  length = array.size
  index = -1
  loop do
    break if index < -length
    result << array[index]
    index -= 1
  end
  result
end

def reverse_array!(array)
  start_index = 0
  end_index = array.size - 1
  loop do
    break if start_index == array.size / 2
    array[start_index], array[end_index] = array[end_index], array[start_index]
    start_index += 1
    end_index -= 1
  end
  array
end

p reverse_array([1, 2, 3, 4]) == [4, 3, 2, 1]
p reverse_array([1, 2, 3, 4, 5]) == [5, 4, 3, 2, 1]
p reverse_array!([1, 2, 3, 4, 5]) == [5, 4, 3, 2, 1] # mutating - just for fun
p reverse_array!([1, 2, 3, 4]) == [4, 3, 2, 1] # mutating - just for fun
