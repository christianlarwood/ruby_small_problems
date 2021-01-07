=begin
https://www.codewars.com/kata/528d9adf0e03778b9e00067e/train/ruby

algorithm:
  - initialize empty result array
  - iterate over each subarray with indices
    - if a subarray includes '1' then add the index of the subarray to result
      - add the index of the mine to result
  - return result array

=end
def mineLocation(array)
  location = []
  array.each_with_index do |subarray, index|
    if subarray.include?(1)
      location << index
      location << subarray.find_index(1)
    end
  end
  p location
end


p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]