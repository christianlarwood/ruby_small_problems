=begin
algorithm:
  - initialize an array with n 1s as elements
  - iterate through the array n times, but not including n since we've already taken care of the first iteration
    - change the index each iteration 

=end
def lights(n)
  array = []
  n.times { array << 1 }
  1.upto(n) do |index|
    array.each do |element|
      index = index
      if array[index] == 1
        array[index] == 0
      else
        array[index] == 1
      end
      index += index
    end
  end
end


p lights(5)
# p lights(5) == [1, 4]
# p lights(10) == [1, 4, 9]
# p lights(1000)