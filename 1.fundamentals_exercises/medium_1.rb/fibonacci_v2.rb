# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = last, first + last
  end
  last
end


# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3)# == 2
# p fibonacci(4)# == 3
# p fibonacci(5) #== 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765


def fibonacci_last(n)
  fib = fibonacci(n)
  fib.digits.reverse.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)  