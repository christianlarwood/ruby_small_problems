=begin
# Write a method that will determine whether an integer is a prime. Do not use the Prime class.
p is_prime?(3) == true
p is_prime?(4) == false

input: an integer
output: boolean

algorithm:
  - iterate through a range of integers from 2..num -1
    - check if number is divisible by any other integer other than 1 and itself
    -   if yes, return false
  - return true otherwise (means it's a prime number)

# Write a method that will take an array of integers and only return those that are prime. 
p select_primes([1, 2, 3, 4]) == [2, 3]
p select_primes([4, 6, 8, 10])

input: array of integers
output: array of prime integers
algorithm:
  - iterate over each element in the array
      - if prime, select it


# Write a method that will take an array of numbers and return the number of primes in the array.
p count_primes([1, 2, 3, 4]) == 2
p count_primes([4, 6, 8, 10]) == 0

input: array of integers
output: integer representing the total count of prime numbers

algorithm:
  - initialize a counter variable and assign to integer 0
  - iterate over each element in the array and
      - if prime, increment counter by 1
  - return counter

=end
def is_prime?(input)
  return false if input == 1
  (2..input - 1).each do |divisor|
    return false if input % divisor == 0
  end

  true
end

p is_prime?(3) == true
p is_prime?(4) == false


def select_primes(array)
  array.select do |number|
    is_prime?(number)
  end
end

p select_primes([1, 2, 3, 4]) == [2, 3]
p select_primes([4, 6, 8, 10]) == []

def count_primes(array)
  count = 0
  array.each do |num|
    count += 1 if is_prime?(num)
  end
  count
end

p count_primes([1, 2, 3, 4]) == 2
p count_primes([4, 6, 8, 10]) == 0