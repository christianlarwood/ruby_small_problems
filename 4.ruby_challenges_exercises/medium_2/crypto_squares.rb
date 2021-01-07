=begin
What's the expected input(s):
  - string of chars
What's the expected output(s):
  - 
What are the rules (explicit & implicit requirements)?:
  - remove all punctuation & spaces, put in lower case
  - if the length of the new string is a perfect square use that for columns
  - if the length is not a perfect square, find the next perfect square and use that for columns
  - the message is then read down the columns in the 0 index and then moving up
  - max chars in each row is 8 
Describe your mental model (interpretation) of the problem:
  - strip your string, break each substring into perfect square columns legnths, read down the 0 index for each substring for your new scrambled string
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - strip the string and downcase
    - get the size of the string
  - split the string into 8 char substrings
  - iterate over each substring and push char at index 0 to new array

=end

# Code:
class Crypto
  attr_reader :string
  attr_accessor :new_string, :length

  def initialize(string)
    @string = string
  end

  def size
    Math.sqrt(normalize_plaintext.size).ceil
  end

  def normalize_plaintext
    string.gsub(/[^a-z0-9]/i, '').downcase
  end

  def plaintext_segments
    substrings = []
    @new_string = normalize_plaintext
    @length = size
    @new_string.chars.each_slice(@length) do |substring|
      substrings << substring.join
    end
    substrings
  end

  def ciphertext
    plaintext_segments
    result = []
    @length.times do |index|
      plaintext_segments.each do |subarray|
      result << subarray[index] unless subarray[index].nil?
      end
    end
    result.join
  end

  def normalize_ciphertext
    substrings = []
    @new_string = ciphertext
    @length = size
    @new_string.chars.each_slice(@length) do |substring|
      substrings << substring.join
    end
    substrings.join(' ')
  end
end

crypto = Crypto.new('Time is an illusion. Lunchtime doubly so.')
# 'tasneyinicdsmiohooelntuillibsuuml'
p crypto.ciphertext
p crypto.normalize_ciphertext

# Test Cases:
require 'minitest/autorun'
# require_relative 'crypto_square'

class CryptoTest < Minitest::Test
  def test_normalize_strange_characters
    crypto = Crypto.new('s#$%^&plunk')
    assert_equal 'splunk', crypto.normalize_plaintext
  end

  def test_normalize_uppercase_characters
    # skip
    crypto = Crypto.new('WHOA HEY!')
    assert_equal 'whoahey', crypto.normalize_plaintext
  end

  def test_normalize_with_numbers
    # skip
    crypto = Crypto.new('1, 2, 3 GO!')
    assert_equal '123go', crypto.normalize_plaintext
  end

  def test_size_of_small_square
    # skip
    crypto = Crypto.new('1234')
    assert_equal 2, crypto.size
  end

  def test_size_of_slightly_larger_square
    # skip
    crypto = Crypto.new('123456789')
    assert_equal 3, crypto.size
  end

  def test_size_of_non_perfect_square
    # skip
    crypto = Crypto.new('123456789abc')
    assert_equal 4, crypto.size
  end

  def test_size_is_determined_by_normalized_plaintext
    # skip
    crypto = Crypto.new('Oh hey, this is nuts!')
    assert_equal 4, crypto.size
  end

  def test_plaintext_segments
    # skip
    crypto = Crypto.new('Never vex thine heart with idle woes')
    expected = %w(neverv exthin eheart withid lewoes)
    assert_equal expected, crypto.plaintext_segments
  end

  def test_other_plaintext_segments
    # skip
    crypto = Crypto.new('ZOMG! ZOMBIES!!!')
    assert_equal %w(zomg zomb ies), crypto.plaintext_segments
  end

  def test_ciphertext
    # skip
    crypto = Crypto.new('Time is an illusion. Lunchtime doubly so.')
    assert_equal 'tasneyinicdsmiohooelntuillibsuuml', crypto.ciphertext
  end

  def test_another_ciphertext
    # skip
    crypto = Crypto.new('We all know interspecies romance is weird.')
    assert_equal 'wneiaweoreneawssciliprerlneoidktcms', crypto.ciphertext
  end

  def test_normalized_ciphertext
    # skip
    crypto = Crypto.new('Vampires are people too!')
    assert_equal 'vrel aepe mset paoo irpo', crypto.normalize_ciphertext
  end

  def test_normalized_ciphertext_spills_into_short_segment
    # skip
    crypto = Crypto.new('Madness, and then illumination.')
    expected = 'msemo aanin dnin ndla etlt shui'
    assert_equal expected, crypto.normalize_ciphertext
  end

  def test_another_normalized_ciphertext
    # skip
    crypto = Crypto.new(
      'If man was meant to stay on the ground god would have given us roots',
    )
    expected = 'imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau'
    assert_equal expected, crypto.normalize_ciphertext
  end

  def test_normalized_ciphertext_with_punctuation
    skip
    crypto = Crypto.new('Have a nice day. Feed the dog & chill out!')
    expected = 'hifei acedl veeol eddgo aatcu nyhht'
    assert_equal expected, crypto.normalize_ciphertext
  end

  def test_normalized_ciphertext_when_just_less_then_a_full_square
    skip
    crypto = Crypto.new('I am')
    assert_equal 'im a', crypto.normalize_ciphertext
  end
end