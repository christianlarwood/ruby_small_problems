=begin
14:00
Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

input: 2 integers
output: array of integers that are prime
algorithm:
  - iterate over a range of integers 
  - check if each integer is a prime number or not
    - if it is a time, select it
    - prime? check: only divisible by 1 and itself

=end
def find_primes(min, max)
  (min..max).select do |num|
    prime?(num)
  end
end

def prime?(num)
  return false if num == 1
  (2...num).all? { |divisor| num % divisor != 0 }
end


p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 2) == [2]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]