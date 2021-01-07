=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

algorithm:
  - iterate over a range of numbers from 1..num
  - if a number is a multiple of 3 & 5, sum it
  - if a number is a multiple of 3, sum it
  - if a number is a multiple of 5, sum it
  - return sum
=end
# def solution(max_num)
#   sum_of_multiples = 0
#   (1...max_num).each do |number|
#     if number % 3 == 0 && number % 5 == 0
#       sum_of_multiples += number
#     elsif number % 3 == 0
#       sum_of_multiples += number
#     elsif number % 5 == 0
#       sum_of_multiples += number
#     end
#   end
#   sum_of_multiples
# end

def solution(max_num)
  (1...max_num).select { |number| number % 3 == 0 || number % 5 == 0 }.reduce(:+)
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
