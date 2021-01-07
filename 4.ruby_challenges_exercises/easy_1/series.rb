require 'minitest/autorun'
# require_relative 'series'

=begin
Problem: write a program that will take a string of digits and length n and output all substrings of n length

Input: string, n (length of substring)
Output: all substrings of length n

Examples:
  01234, n = 3 => 012, 123, 234
  01234, n = 2 => 01, 12, 23, 34

Pseudo:
  - iterate over a string
  - find substrings of length n
  - add new substrings to a results array
  - output substrings from results array
Algo:
  - initialize a result lv and assign to empty array
  - initialize a start and end index. End index = n - 1
  - def a loop
    - break out of loop once end index > string length
    - find substring of string and add to result array
  - output each substring from result array

=end

class Series
  def initialize(string)
    @digits = string.reverse.to_i.digits
  end

  def slices(n)
    # fail ArgumentError.new if n > @digits.length
    raise ArgumentError if n > @digits.length

    result = []
    start_index = 0
    end_index = n - 1

    while end_index < @digits.length
      result << @digits[start_index..end_index]
      start_index += 1
      end_index += 1
    end

    result
  end
end

##official answer
class Series
  attr_reader :numbers
  
  def initialize(string)
    @numbers = string.chars.map(&:to_i)
  end

  def slices(count)
    raise ArgumentError if count > numbers.length
    numbers.each_cons(count).to_a
  end
end

test = Series.new('01234')
p test.slices(1)

class SeriesTest < Minitest::Test
  def test_simple_slices_of_one
    series = Series.new('01234')
    assert_equal [[0], [1], [2], [3], [4]], series.slices(1)
  end

  def test_simple_slices_of_one_again
    # skip
    series = Series.new('92834')
    assert_equal [[9], [2], [8], [3], [4]], series.slices(1)
  end

  def test_simple_slices_of_two
    # skip
    series = Series.new('01234')
    assert_equal [[0, 1], [1, 2], [2, 3], [3, 4]], series.slices(2)
  end

  def test_other_slices_of_two
    # skip
    series = Series.new('98273463')
    expected = [[9, 8], [8, 2], [2, 7], [7, 3], [3, 4], [4, 6], [6, 3]]
    assert_equal expected, series.slices(2)
  end

  def test_simple_slices_of_two_again
    # skip
    series = Series.new('37103')
    assert_equal [[3, 7], [7, 1], [1, 0], [0, 3]], series.slices(2)
  end

  def test_simple_slices_of_three
    # skip
    series = Series.new('01234')
    assert_equal [[0, 1, 2], [1, 2, 3], [2, 3, 4]], series.slices(3)
  end

  def test_simple_slices_of_three_again
    # skip
    series = Series.new('31001')
    assert_equal [[3, 1, 0], [1, 0, 0], [0, 0, 1]], series.slices(3)
  end

  def test_other_slices_of_three
    # skip
    series = Series.new('982347')
    expected = [[9, 8, 2], [8, 2, 3], [2, 3, 4], [3, 4, 7]]
    assert_equal expected, series.slices(3)
  end

  def test_simple_slices_of_four
    # skip
    series = Series.new('01234')
    assert_equal [[0, 1, 2, 3], [1, 2, 3, 4]], series.slices(4)
  end

  def test_simple_slices_of_four_again
    # skip
    series = Series.new('91274')
    assert_equal [[9, 1, 2, 7], [1, 2, 7, 4]], series.slices(4)
  end

  def test_simple_slices_of_five
    # skip
    series = Series.new('01234')
    assert_equal [[0, 1, 2, 3, 4]], series.slices(5)
  end

  def test_simple_slices_of_five_again
    # skip
    series = Series.new('81228')
    assert_equal [[8, 1, 2, 2, 8]], series.slices(5)
  end

  def test_simple_slice_that_blows_up
    # skip
    series = Series.new('01234')
    assert_raises ArgumentError do
      series.slices(6)
    end
  end

  def test_more_complicated_slice_that_blows_up
    # skip
    slice_string = '01032987583'

    series = Series.new(slice_string)
    assert_raises ArgumentError do
      series.slices(slice_string.length + 1)
    end
  end
end