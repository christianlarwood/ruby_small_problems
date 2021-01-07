=begin
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

input: two arrays as arguments
output: return a sorted array with all duplicates removed
algorithm:
  - invoke the `+` method on array1 and pass in array2 as an argument
  - invoke uniq! method on the return value

=end
def merge(array1, array2)
  (array1 + array2).uniq!
end

# official answer
def merge(array1, array2)
  array1 | array2
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
