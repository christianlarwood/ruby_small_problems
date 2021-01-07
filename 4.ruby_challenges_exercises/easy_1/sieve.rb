require 'minitest/autorun'
require_relative 'sieve'

=begin
input: integer representing the high end of the range
output: array of prime numbers

Pseudo:
  - create an array of all numbers between 2 and n
  - iterate over each number and if a number is a prime mark all multiples of that number in the array with an x
  - repeat

Algo:
  - convert the range 2..n into an array and assign to variable 'numbers'
  - starting with the first num, 2, replace all multiples of 2 in the array with an 'X', move to next num and repeat. 
    - if num == X do nothing
  - once you've iterated over the array, remove the "X"s and return the array of primes

=end

class Sieve
  def initialize(max)
    @min = 2
    @max = max
  end

  def primes
    primes = []
    array_of_nums = (@min..@max).to_a
    array_of_nums.each do |num1|
      if num1 != 'X'
        primes << num1
        array_of_nums.each_with_index do |num2, idx|
          if num2 % num1 == 0
            array_of_nums[idx] = 'X'
          end
        end
      end
    end
    primes

  end
end

## top answer
class Sieve
  attr_reader :array_of_nums

  def initialize(max)
    @array_of_nums = (2..max).to_a
  end

  def primes
    array_of_nums.each do |prime|
      array_of_nums.reject! do |num|
        (num != prime) && (num % prime == 0)
      end
    end
    array_of_nums
  end
end

# test = Sieve.new(10)
# p test.primes

class SieveTest < Minitest::Test
  def test_a_few_primes
    expected = [2, 3, 5, 7]
    assert_equal expected, Sieve.new(10).primes
  end

  def test_primes
    # skip
    expected = [
      2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59,
      61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127,
      131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191,
      193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257,
      263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331,
      337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401,
      409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467,
      479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563,
      569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631,
      641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709,
      719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797,
      809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877,
      881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967,
      971, 977, 983, 991, 997
    ]
    assert_equal expected, Sieve.new(1000).primes
  end
end

