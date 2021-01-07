=begin
select the element out of the array if its index is a fibonacci number

input: array of elements
output: an array of elements where index is fibonacci

algorithm:
  - create array of fibonacci numbers
    - 
  - iterate over the input array and if the index is a fibonacci number, select the element

=end
def fib_indexes(array)
  result = []
  (0...array.size).each do |index|
    result << array[index] if fibonacci?(index)
  end
  result
end

def fibonacci?(input)
  array_of_fibs = [1, 1]
  if input > 1
    (1..input).each do |index|
      array_of_fibs << array_of_fibs[index - 1] + array_of_fibs[index]
    end
  end
  array_of_fibs.include?(input)
end
 
p fib_indexes((1..100).to_a) == [2, 3, 4, 6, 9, 14, 22, 35, 56, 90]
p fib_indexes([1, 2, 3, 4, 5, 6]) == [2, 3, 4, 6]
p fib_indexes(('a'..'z').to_a) == ["b", "c", "d", "f", "i", "n", "v"]