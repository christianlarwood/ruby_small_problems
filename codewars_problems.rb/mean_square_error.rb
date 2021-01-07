=begin
Complete the function that accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]   -->   1   because (1 + 1) / 2

algorithm:
  - iterate over the indices of each array and return the square root of the difference to a result array
  - reduce and add together the squares and divide by the length


=end
def solution(array1, array2)
  squares = []
  length = array1.size
  (0...length).each do |index|
    difference = array2[index] - array1[index]
    square = difference**2
    squares << square
  end
  (squares.reduce(:+)).to_f / length
end


p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
