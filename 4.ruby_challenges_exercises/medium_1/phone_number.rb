=begin
What's the expected input(s):
  - string of chars
What's the expected output(s):
  - a string of integers without special chars
What are the rules (explicit & implicit requirements)?:
  - if num < 10 digits = bad number (0000000000)
  - 
  - Need to format the number with to_s
  - Need to output area code with #area_code
  - Need to output number
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - #number
    - 
  - #area_code
      return first 3 digits
  - #to_s
      format into phone number (123) 456-7890
  - #validate_number
    - bad number:
      - any string with non-numeric
      - less than 10 digits or more than 11
      - 11 digits, and first digit isn't 1
    - good number = 10 digits, no letters
  - #clean_number
    - 
    - if 11 digits and first is 1
      - trim off 1
class PhoneNumber
  attr_reader :digits, :number
  
  def initialize(str)
    @digits = str.scan(/\d/)
    @number = format_number(str)
  end
  
  def area_code
    number[0,3]
  end
  
  def to_s
    "(#{area_code}) #{number[3,3]}-#{number[6,4]}"
  end
  
  def format_number(str)
    return '0000000000' if !valid?(str)
    return digits[1..-1].join if valid?(str) && digits.size == 11
    digits.join
  end
  
  def valid?(str)
    return false if /[a-zA-Z]/ =~ str || digits.size > 11 || digits.size < 10
    return false if digits.size == 11 && digits[0] != '1'
    true
  end
end
=end

# Code:
class PhoneNumber
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def number
    final_num = ''
    if validate_number
      if clean_number.size == 11
        final_num = clean_number[1..-1]
      end
      final_num = clean_number
    else
      final_num = '0000000000'
    end
    final_num
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end

  def validate_number
    return false if string.match?(/[a-z]/)
    return false if clean_number.size < 10 || clean_number.size > 11
    return false if clean_number.size == 11 && clean_number[0] != 1
    true
  end

  def clean_number
    clean_num = string.gsub(/[^0-9]/, '')
    clean_num
  end
end

# Test Cases:
p PhoneNumber.new('(123) 456-7890').clean_number



require 'minitest/autorun'

class PhoneNumberTest < Minitest::Test
  def test_cleans_number
    number = PhoneNumber.new('(123) 456-7890').number
    assert_equal '1234567890', number
  end

  def test_cleans_a_different_number
    number = PhoneNumber.new('(987) 654-3210').number
    assert_equal '9876543210', number
  end

  def test_cleans_number_with_dots
    number = PhoneNumber.new('456.123.7890').number
    assert_equal '4561237890', number
  end

  def test_invalid_with_letters_in_place_of_numbers
    number = PhoneNumber.new('123-abc-1234').number
    assert_equal '0000000000', number
  end

  def test_invalid_when_9_digits
    # skip
    number = PhoneNumber.new('123456789').number
    assert_equal '0000000000', number
  end

  def test_valid_when_11_digits_and_first_is_1
    # skip
    number = PhoneNumber.new('19876543210').number
    assert_equal '9876543210', number
  end

  def test_valid_when_10_digits_and_area_code_starts_with_1
    # skip
    number = PhoneNumber.new('1234567890').number
    assert_equal '1234567890', number
  end

  def test_invalid_when_11_digits
    # skip
    number = PhoneNumber.new('21234567890').number
    assert_equal '0000000000', number
  end

  def test_invalid_when_12_digits_and_first_is_1
    # skip
    number = PhoneNumber.new('112345678901').number
    assert_equal '0000000000', number
  end

  def test_invalid_when_10_digits_with_extra_letters
    # skip
    number = PhoneNumber.new('1a2a3a4a5a6a7a8a9a0a').number
    assert_equal '0000000000', number
  end

  def test_area_code
    # skip
    number = PhoneNumber.new('1234567890')
    assert_equal '123', number.area_code
  end

  def test_different_area_code
    # skip
    number = PhoneNumber.new('9876543210')
    assert_equal '987', number.area_code
  end

  def test_pretty_print
    # skip
    number = PhoneNumber.new('5551234567')
    assert_equal '(555) 123-4567', number.to_s
  end

  def test_pretty_print_with_full_us_phone_number
    # skip
    number = PhoneNumber.new('11234567890')
    assert_equal '(123) 456-7890', number.to_s
  end
end