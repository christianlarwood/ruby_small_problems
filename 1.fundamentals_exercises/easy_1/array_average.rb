def average(array)
  array.sum / array.size
end  



puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([1, 2, 3, 4, 5]) == 3