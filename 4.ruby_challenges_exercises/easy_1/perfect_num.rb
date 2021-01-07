=begin
What's the expected input(s):
  - integer argument passed in to #classify method
What's the expected output(s):
  - perfect, deficient, or abundant string
What are the rules (explicit & implicit requirements)?:
  - Perfect num = sum of factors = num
  - Abundant = sum of factors > num
  - Deficient = sum of factors < num (prime nums)
  - negative nums raises standard error
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - initialize divisors array
  - iterate over a range of nums up to but not including max_num
    - if num is a divisor of max_num, add it to divisors array
  - sum divisors array
  - conditional based on sum compared to max_num

=end

# Code:
class PerfectNumber
  def self.classify(max_num)
    raise StandardError if max_num < 1
    divisors = []
    (1...max_num).each do |num|
      divisors << num if max_num % num == 0
    end
    sum_of_factors = divisors.sum
    if sum_of_factors == max_num
      "perfect"
    elsif sum_of_factors > max_num
      'abundant'
    elsif sum_of_factors < max_num
      'deficient'
    else 
      'error'
    end
  end
end

# Test Cases:
# p PerfectNumber.classify(13)
# p PerfectNumber.classify(28)
# p PerfectNumber.classify(-1)

require 'minitest/autorun'

class PerfectNumberTest < Minitest::Test
  def test_initialize_perfect_number
    assert_raises StandardError do
      PerfectNumber.classify(-1)
    end
  end

  def test_classify_deficient
    assert_equal 'deficient', PerfectNumber.classify(13)
  end

  def test_classify_perfect
    assert_equal 'perfect', PerfectNumber.classify(28)
  end

  def test_classify_abundant
    assert_equal 'abundant', PerfectNumber.classify(12)
  end
end