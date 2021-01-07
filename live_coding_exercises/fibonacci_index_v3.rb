=begin
select the element out of the array if its index is a fibonacci number

Input: array
Output: an array with elements that are only fibonacci indices

Approach:
  - iterate over the indices in the array
  - if an index is a fibonacci number, return the element at that index
  
Algorithm:
  - iterate over each element in the array, passing the element and index to the block
    - if the index is a fibonacci number, return the element
      - separate method to see if index is fibonacci


=end
def fib_indexes(array)
  result = []
  array.each_with_index do |element, index|
    if is_fibonacci?(index)
      result << element
    end
  end
  result
end

# def is_fibonacci?(num)
#   array_of_fibs = [1, 1]
#   (0..num).each do |index|
#     array_of_fibs << array_of_fibs[index] + array_of_fibs[index + 1]
#   end
#   array_of_fibs.include?(num)
# end

def is_fibonacci?(num)
  first, last = [1, 1]
  1.upto(num) do
    return true if num == last
    first, last = [last, first + last]
    # return true if num == last
  end
  false
end

# p is_fibonacci?(5)

p fib_indexes((1..100).to_a) #== [2, 3, 4, 6, 9, 14, 22, 35, 56, 90]
p fib_indexes([1, 2, 3, 4, 5, 6]) == [2, 3, 4, 6]
p fib_indexes(('a'..'z').to_a) == ["b", "c", "d", "f", "i", "n", "v"]