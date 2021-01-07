=begin
- initialize result variable with empty array
- iterate over the array using each to parse out each subarray
  - initialize quantity variable and assign to subarray[1]
  - initialize item variable and assign to subarray[0]
  - iterate quantity.times and 
    - push each item to result array
- return result array
=end
def buy_fruit(array)
  result = []
  array.each do |subarray|
    quantity = subarray[1]
    item = subarray[0]
    quantity.times do |_|
      result << item
    end
  end
  result
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]