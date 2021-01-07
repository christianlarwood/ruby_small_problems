=begin
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.
algorithm:
  - initialize a result variable with an empty array
  - invoke the each_with_index method on the range (1..count) 
    - push the result of multiplying the first_num by the index to result
  - return result

=end
def sequence(count, start_num)
  result = []
  (1..count).each do |value|
    result << start_num * value
  end
  p result
end


puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []