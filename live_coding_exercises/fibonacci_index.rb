=begin
29:00 --> 16:15
select the element out of the array if its index is a fibonacci number

algorithm
  - initialize a result variable and assign to an empty array
  - iterate through the index of the array and 
    - if the index is a fibonacci number, then add the element to the result array
      - create a method that determines if the number is fibonacci
  - return the result array
=end
def fib_indexes(array)
  result = []
  array.each_with_index do |element, index|
    if fibonacci(index)
      result << element
    end
  end
  result
end

def fibonacci(num)
  array_of_fibs = [1, 1]
  (0..num).each do |index|
    array_of_fibs << array_of_fibs[index] + array_of_fibs[index + 1]
  end
  array_of_fibs.include?(num)
end

p fib_indexes((1..100).to_a) == [2, 3, 4, 6, 9, 14, 22, 35, 56, 90]
p fib_indexes([1, 2, 3, 4, 5, 6]) == [2, 3, 4, 6]
p fib_indexes(('a'..'z').to_a) == ["b", "c", "d", "f", "i", "n", "v"]
