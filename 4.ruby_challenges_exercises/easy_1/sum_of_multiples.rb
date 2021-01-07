=begin
What's the expected input(s):
  - set of multiples and max number
What's the expected output(s):
  - sum of those multiples
What are the rules (explicit & implicit requirements)?:
  - find all multiples of given numbers up to but not including the max number
  - default to 3, 5 as multiples if no multiples are given
  - do not include the max number 
    return sum of all multiples
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - 
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - iterate over a range up to, but not including the last num
  - if a num is a multiple of any of the multiples, add it to the result array
  - sum and return the result array

=end

# Code:
class SumOfMultiples
  attr_reader :multiples, :default

  def initialize(*multiples)
    @multiples = multiples
    @default = [3, 5]
  end

  def to(max_num)
    result = []
    (1...max_num).each do |num|
      @multiples.each do |divisor|
        result << num if num % divisor == 0
      end
    end
    result.uniq.sum
  end

  def self.to(max_num)
    result = []
    (1...max_num).each do |num|
      [3, 5].each do |divisor|
        result << num if num % divisor == 0
      end
    end
    result.uniq.sum
  end
end


# Test Cases:

require 'minitest/autorun'
require_relative 'sum_of_multiples'

class SumTest < Minitest::Test
  def test_sum_to_1
    assert_equal 0, SumOfMultiples.to(1)
  end

  def test_sum_to_3
    # skip
    assert_equal 3, SumOfMultiples.to(4)
  end

  def test_sum_to_10
    # skip
    assert_equal 23, SumOfMultiples.to(10)
  end

  def test_sum_to_100
    # skip
    assert_equal 2_318, SumOfMultiples.to(100)
  end

  def test_sum_to_1000
    # skip
    assert_equal 233_168, SumOfMultiples.to(1000)
  end

  def test_configurable_7_13_17_to_20
    # skip
    assert_equal 51, SumOfMultiples.new(7, 13, 17).to(20)
  end

  def test_configurable_4_6_to_15
    # skip
    assert_equal 30, SumOfMultiples.new(4, 6).to(15)
  end

  def test_configurable_5_6_8_to_150
    # skip
    assert_equal 4419, SumOfMultiples.new(5, 6, 8).to(150)
  end

  def test_configurable_43_47_to_10000
    # skip
    assert_equal 2_203_160, SumOfMultiples.new(43, 47).to(10_000)
  end
end