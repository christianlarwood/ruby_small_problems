=begin
What's the expected input(s):
  - instantiate a new object and passed either an integer or string
What's the expected output(s):
  - array of commands
What are the rules (explicit & implicit requirements)?:
  - 1 = wink
  - 10 = double blink
    100 = close your eyes
    1000 = jump
    10000 = Reverse the order of the operations in the secret handshake.
  - 0 integer or string of words returns empty array
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - create a hash of moves associated to integers
  - if given an integer, convert to binary using to.s(2), convert everything back to integer conversion of binary
  - iterate over the hash and divmod by each integer into the binary conversion
  - if match, add to array
    - reassign remainder as next number for divmod

=end

# Code:
class SecretHandshake
  attr_accessor :binary, :number

  def initialize(number)
    @number = number
    @binary = 0
  end

  COMMAND_VALUES = {
    1 => 'wink',
    10 => 'double blink',
    100 => 'close your eyes',
    1000 => 'jump',
    10_000 => 'reverse'
  }

  def commands
    convert_to_binary
    number = binary
    result = []
    COMMAND_VALUES.reverse_each do |key, value|
      command, remainder = number.divmod(key)
      result << value if command == 1
      number = remainder
    end
    p result
    if result.include?('reverse')
      result.delete('reverse')
      result.reverse!
    end
    result
  end

  def convert_to_binary
    if number.class == Integer
      @binary = number.to_s(2).chars.map(&:to_i).join.to_i
    else
      @binary = number.to_i
    end
  end
end

# Test Cases:
# handshake = SecretHandshake.new 9
# handshake.commands # => ["wink","jump"]

handshake = SecretHandshake.new "11111"
p handshake.commands # => ["jump", "close your eyes", "double blink", "wink"]

handshake = SecretHandshake.new "10011"
p handshake.commands #["wink", "double blink"]

# require 'minitest/autorun'
# # require_relative 'secret_handshake'

# class SecretHandshakeTest < Minitest::Test
#   def test_handshake_1_to_wink
#     handshake = SecretHandshake.new(1)
#     assert_equal ['wink'], handshake.commands
#   end

#   def test_handshake_10_to_double_blink
#     skip
#     handshake = SecretHandshake.new(2)
#     assert_equal ['double blink'], handshake.commands
#   end

#   def test_handshake_100_to_close_your_eyes
#     skip
#     handshake = SecretHandshake.new(4)
#     assert_equal ['close your eyes'], handshake.commands
#   end

#   def test_handshake_1000_to_jump
#     skip
#     handshake = SecretHandshake.new(8)
#     assert_equal ['jump'], handshake.commands
#   end

#   def test_handshake_11_to_wink_and_double_blink
#     skip
#     handshake = SecretHandshake.new(3)
#     assert_equal ['wink', 'double blink'], handshake.commands
#   end

#   def test_handshake_10011_to_double_blink_and_wink
#     skip
#     handshake = SecretHandshake.new(19)
#     assert_equal ['double blink', 'wink'], handshake.commands
#   end

#   def test_handshake_11111_to_double_blink_and_wink
#     skip
#     handshake = SecretHandshake.new(31)
#     expected = ['jump', 'close your eyes', 'double blink', 'wink']
#     assert_equal expected, handshake.commands
#   end

#   def test_valid_string_input
#     skip
#     handshake = SecretHandshake.new('1')
#     assert_equal ['wink'], handshake.commands
#   end

#   def test_invalid_handshake
#     skip
#     handshake = SecretHandshake.new('piggies')
#     assert_equal [], handshake.commands
#   end
# end