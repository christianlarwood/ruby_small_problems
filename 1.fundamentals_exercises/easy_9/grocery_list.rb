=begin
algorithm:
  - initialize new array
  - iterate through each subarray
    - multiply the 0 index by 1 index integer
    - push to new array

=end
def buy_fruit(array)
  result = []
  array.each do |subarray|
    subarray[1].times do |item|
      result << subarray[0]
    end
  end
  result
end

# official answer
def buy_fruit(array)
  result = []
  array.each do |subarray|
    item, quantity = subarray[0], subarray[1]
    quantity.times { result << item }
  end

  result
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]