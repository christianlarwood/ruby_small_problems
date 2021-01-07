=begin
What's the expected input(s):
  - 
What's the expected output(s):
  - 
What are the rules (explicit & implicit requirements)?:
  - 
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - 
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - iterate over one string and compare the char with the char in the other string at the same index
    - if chars are different, increment counter by 1
  - return  counter

=end

# Code:
class DNA
  attr_reader :string1

  def initialize(string1)
    @string1 = string1
  end

  def hamming_distance(string2)
    
    counter = 0
    longest_string = nil
    shortest_string = nil
    if string1.size > string2.size
      longest_string = string1
      shortest_string = string2
    else
      longest_string = string2
      shortest_string = string1
    end
    shortest_string.chars.each_with_index do |char, index|
      if char != longest_string[index]
        counter += 1
      end
    end
    counter
  end
end

# Test Cases:
require 'minitest/autorun'
# require_relative 'point_mutations'

class DNATest < Minitest::Test
  def test_no_difference_between_empty_strands
    assert_equal 0, DNA.new('').hamming_distance('')
  end

  def test_no_difference_between_identical_strands
    # skip
    assert_equal 0, DNA.new('GGACTGA').hamming_distance('GGACTGA')
  end

  def test_complete_hamming_distance_in_small_strand
    # skip
    assert_equal 3, DNA.new('ACT').hamming_distance('GGA')
  end

  def test_hamming_distance_in_off_by_one_strand
    # skip
    strand = 'GGACGGATTCTGACCTGGACTAATTTTGGGG'
    distance = 'AGGACGGATTCTGACCTGGACTAATTTTGGGG'
    assert_equal 19, DNA.new(strand).hamming_distance(distance)
  end

  def test_small_hamming_distance_in_middle_somewhere
    # skip
    assert_equal 1, DNA.new('GGACG').hamming_distance('GGTCG')
  end

  def test_larger_distance
    # skip
    assert_equal 2, DNA.new('ACCAGGG').hamming_distance('ACTATGG')
  end

  def test_ignores_extra_length_on_other_strand_when_longer
    # skip
    assert_equal 3, DNA.new('AAACTAGGGG').hamming_distance('AGGCTAGCGGTAGGAC')
  end

  def test_ignores_extra_length_on_original_strand_when_longer
    # skip
    strand = 'GACTACGGACAGGGTAGGGAAT'
    distance = 'GACATCGCACACC'
    assert_equal 5, DNA.new(strand).hamming_distance(distance)
  end

  def test_does_not_actually_shorten_original_strand
    # skip
    dna = DNA.new('AGACAACAGCCAGCCGCCGGATT')
    assert_equal 1, dna.hamming_distance('AGGCAA')
    assert_equal 4, dna.hamming_distance('AGACATCTTTCAGCCGCCGGATTAGGCAA')
    assert_equal 1, dna.hamming_distance('AGG')
  end
end



