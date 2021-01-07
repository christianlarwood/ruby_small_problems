=begin
You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

algorithm:
  - iterate through each element in the array
  - if the sum of the array is odd
    - iterate through and find the even element
  - else find the odd element
=end

def parity(array)
  odds = []
  evens = []
  array.each do |num|
    if num.even?
      evens << num
    else
      odds << num
    end
  end
  odds.size > evens.size ? evens.first : odds.first
  # if array.sum.odd?
  #   array.each do |num|
  #     return num if num.odd?
  #   end
  # elsif array.sum.even?
  #   array.each do |num|
  #     return num if num.even?
  #   end
  # end
end

p parity([160, 3, 1719, 19, 11, 13, -21]) #== 160
p parity([2, 4, 0, 100, 4, 11, 2602, 36]) #== 11