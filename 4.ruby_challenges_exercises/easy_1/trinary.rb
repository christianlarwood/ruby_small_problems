=begin
What's the expected input(s):
  - string
What's the expected output(s):
  - trinary number
What are the rules (explicit & implicit requirements)?:
  - Trinary numbers can only contain 3 symbols: 0, 1, 2
  - Invalid entries should convert to 0
  - last digit raised 3^0, second to last raised 3^1, etc.
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - given a string of digits, convert it to its trinary equivalent
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - check if the string contains nums > 3 or letters, if so return 0
  - convert string to integer, split into digits, reverse order and iterate through
  - return sum of new digits

=end

# Code:
class Trinary
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def to_decimal
    if valid_string
      array_of_nums = string.to_i.digits
      result = []
      array_of_nums.each_with_index do |digit, index|
        result << digit * 3**index
      end
      result.sum
    else
      0
    end
  end

  def valid_string
    !string.match?(/[a..z]/)
  end
end

class Trinary
  def initialize(str)
    @trinary = str
  end

  def to_decimal
    return 0 if invalid_trinary?
    numbers = @trinary.reverse.chars.map(&:to_i)
    numbers.each_with_index.map { |num, idx| 3**idx * num }.inject(:+)
  end

  private

  def invalid_trinary?
    @trinary.match(/[^0-2]/)
  end
end

# Test Cases:
require 'minitest/autorun'
require_relative 'trinary'

class TrinaryTest < Minitest::Test
  def test_trinary_1_is_decimal_1
    assert_equal 1, Trinary.new('1').to_decimal
  end

  def test_trinary_2_is_decimal_2
    # skip
    assert_equal 2, Trinary.new('2').to_decimal
  end

  def test_trinary_10_is_decimal_3
    # skip
    assert_equal 3, Trinary.new('10').to_decimal
  end

  def test_trinary_11_is_decimal_4
    # skip
    assert_equal 4, Trinary.new('11').to_decimal
  end

  def test_trinary_100_is_decimal_9
    # skip
    assert_equal 9, Trinary.new('100').to_decimal
  end

  def test_trinary_112_is_decimal_14
    # skip
    assert_equal 14, Trinary.new('112').to_decimal
  end

  def test_trinary_222_is_26
    # skip
    assert_equal 26, Trinary.new('222').to_decimal
  end

  def test_trinary_1122000120_is_32091
    # skip
    assert_equal 32_091, Trinary.new('1122000120').to_decimal
  end

  def test_invalid_trinary_is_decimal_0
    # skip
    assert_equal 0, Trinary.new('carrot').to_decimal
  end

  def test_invalid_trinary_with_digits_is_decimal_0
    # skip
    assert_equal 0, Trinary.new('0a1b2c').to_decimal
  end
end