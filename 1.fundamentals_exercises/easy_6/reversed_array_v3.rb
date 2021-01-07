=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

input: array
output: array in reversed order
algorithm:
  - 

=end
def reverse!(array)
  half = array.size / 2
  (0).upto(half) do |index|
    p array
    array[-1], array[index] = array[index], array[-1]
  end
  # p array
end



list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
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