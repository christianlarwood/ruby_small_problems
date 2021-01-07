=begin
What's the expected input(s):
  - anagram and an array of words to check against
What's the expected output(s):
  - an array of words that are anagrams of the anagram
What are the rules (explicit & implicit requirements)?:
  - anagram is a word that has the same chars as another word
Describe your mental model (interpretation) of the problem:
  - given a word, find and return a new array of all anagram matches in another list of words
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a new Anagram class with a constructor method with 1 parameter, anagram
    - initialize an instance variable @anagram and assign to anagram
      - split the anagram into chars, sort, and join
  - define a match method
    - initialize a result lv and assign to empty array
    - iterate over the array of words and if there's a match, push the word to the results array. 
    - return result array

  Methods needed: match

=end

# Code:
class Anagram
  attr_reader :anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(array)
    result = []
    array.each do |word|
      result << word if sorted_chars(word) == sorted_chars(anagram) && word.downcase != anagram.downcase
    end
    result
  end

  def sorted_chars(word)
    word.downcase.chars.sort.join
  end

  # def anagram
  #   @anagram = anagram.chars.sort.join
  # end
end

# Test Cases:
# test = Anagram.new('diaper')
# p test.match(%w(hello world zombies pants daiepr))

require 'minitest/autorun'
# require_relative 'anagram'

class AnagramTest < Minitest::Test
  def test_no_matches
    detector = Anagram.new('diaper')
    assert_equal [], detector.match(%w(hello world zombies pants))
  end

  def test_detect_simple_anagram
    # skip
    detector = Anagram.new('ant')
    anagrams = detector.match(%w(tan stand at))
    assert_equal ['tan'], anagrams
  end

  def test_detect_multiple_anagrams
    # skip
    detector = Anagram.new('master')
    anagrams = detector.match(%w(stream pigeon maters))
    assert_equal %w(maters stream), anagrams.sort
  end

  def test_does_not_confuse_different_duplicates
    # skip
    detector = Anagram.new('galea')
    assert_equal [], detector.match(['eagle'])
  end

  def test_identical_word_is_not_anagram
    # skip
    detector = Anagram.new('corn')
    anagrams = detector.match %w(corn dark Corn rank CORN cron park)
    assert_equal ['cron'], anagrams
  end

  def test_eliminate_anagrams_with_same_checksum
    # skip
    detector = Anagram.new('mass')
    assert_equal [], detector.match(['last'])
  end

  def test_eliminate_anagram_subsets
    # skip
    detector = Anagram.new('good')
    assert_equal [], detector.match(%w(dog goody))
  end

  def test_detect_anagram
    # skip
    detector = Anagram.new('listen')
    anagrams = detector.match %w(enlists google inlets banana)
    assert_equal ['inlets'], anagrams
  end

  def test_multiple_anagrams
    # skip
    detector = Anagram.new('allergy')
    anagrams =
      detector.match %w( gallery ballerina regally clergy largely leading)
    assert_equal %w(gallery largely regally), anagrams.sort
  end

  def test_anagrams_are_case_insensitive
    # skip
    detector = Anagram.new('Orchestra')
    anagrams = detector.match %w(cashregister Carthorse radishes)
    assert_equal ['Carthorse'], anagrams
  end
end