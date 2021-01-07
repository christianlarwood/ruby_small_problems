# class Scrabble
#   attr_reader :word

#   def initialize(word)
#     @word = word
#   end

#   POINTS = {
#     1 => %w[a e i o u l n r s t],
#     2 => %w[d g],
#     3 => %w[b c m p],
#     4 => %w[f h v w y],
#     5 => %w[k],
#     8 => %w[j x],
#     10 => %w[q z]
#   }.freeze

#   def self.score(word)
#     return 0 if word.nil?
#     return 0 if word.gsub(/[^a-z]/i, '').empty?

#     total_score = 0
#     word.downcase.chars.each do |char|
#       POINTS.each { |key, value| total_score += key if value.include?(char) }
#     end
#     total_score
#   end

#   def score
#     self.class.score(word)
#   end
# end

class Scrabble
  attr_reader :char

  def initialize(chars)
    @char = chars
  end

  def score
    char.nil? ? 0 : calculate
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private

  def calculate
    initial = char.scan(/[aeioulnrst]/i).size
    initial += char.scan(/[dg]/i).size * 2
    initial += char.scan(/[bcmp]/i).size * 3
    initial += char.scan(/[fhvwy]/i).size * 4
    calculate_big(initial)
  end

  def calculate_big(initial)
    initial += char.scan(/[k]/i).size * 5
    initial += char.scan(/[jx]/i).size * 8
    initial + char.scan(/[qz]/i).size * 10
  end
end

# p Scrabble.new(nil).score

require 'minitest/autorun'
# require_relative 'scrabble_score'

class ScrabbleTest < Minitest::Test
  def test_empty_word_scores_zero
    assert_equal 0, Scrabble.new('').score
  end

  def test_whitespace_scores_zero
    # skip
    assert_equal 0, Scrabble.new(" \t\n").score
  end

  def test_nil_scores_zero
    # skip
    assert_equal 0, Scrabble.new(nil).score
  end

  def test_scores_very_short_word
    # skip
    assert_equal 1, Scrabble.new('a').score
  end

  def test_scores_other_very_short_word
    # skip
    assert_equal 4, Scrabble.new('f').score
  end

  def test_simple_word_scores_the_number_of_letters
    # skip
    assert_equal 6, Scrabble.new('street').score
  end

  def test_complicated_word_scores_more
    # skip
    assert_equal 22, Scrabble.new('quirky').score
  end

  def test_scores_are_case_insensitive
    # skip
    assert_equal 41, Scrabble.new('OXYPHENBUTAZONE').score
  end

  def test_convenient_scoring
    # skip
    assert_equal 13, Scrabble.score('alacrity')
  end
end
