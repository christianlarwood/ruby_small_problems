def multisum(number)
  sum = 0
  1.upto(number) do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  sum
end


puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168