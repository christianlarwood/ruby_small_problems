=begin
https://www.codewars.com/kata/5c55ad8c9d76d41a62b4ede3/train/ruby

You are given array of integers, your task will be to count all pairs in that array and return their count.

input: array
output: integer representing total count of pairs

approach:
  - find all pairs
  - increase counter by 1 if there's a pair

algorithm:
  - initialize count variable and assign to 0
  - iterate over each element in the array
    - if the element has a count == 2
      - increment count by 1
      if count > 2
      - add divmod value to counter
  - return count
=end

def pairs(arr)
  count = 0
  new_array = arr.uniq
  new_array.each do |num|
    if arr.count(num) >= 2
      total, rem = arr.count(num).divmod(2)
      count += total
    end
  end
    
  count
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0