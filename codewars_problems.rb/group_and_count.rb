=begin
Your goal is to write the group_and_count method, which should receive an array as a unique parameter and return a hash. Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}
The following methods were disabled:

Array#count
Array#length

algorithm:
  - initialize a new hash
  - iterate over each element in the array
    - add a new key-value pair to hash
  - return hash

=end
def group_and_count(array)
  return nil if array.nil? || array.empty?
  hash = array.group_by { |num| num }
  hash.each do |k, v|
    max_index = 0
    v.each_index do |index|
      if index > max_index
        max_index = index
      end
    end
    hash[k] = max_index + 1
  end
  hash
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}
p group_and_count([0,1,1,0]) == {0=>2, 1=>2}
