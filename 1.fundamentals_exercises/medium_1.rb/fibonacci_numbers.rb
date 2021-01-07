def fibonacci(num)
  array = [1, 1]
  start_index = 0
  end_index = 1
  (num - 2).times do |_|
    array << array[start_index] + array[end_index]
    start_index += 1
    end_index += 1
  end
  array.last
end

# official explanation
def fibonacci(num)
  first, last = [1, 1]
  3.upto(num) do
    first, last = [last, first + last]
  end
  last
end

puts fibonacci(5)
puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075