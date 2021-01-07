class InvalidCodonError < StandardError; end

class Translation
  AMINO_ACIDS = {
    "Methionine" => %w(AUG),
    "Phenylalanine" => %w(UUU UUC),
    "Leucine" => %w(UUA UUG),
    "Serine" => %w(UCU UCC UCA UCG),
    "Tyrosine" => %w(UAU UAC),
    "Cysteine" => %w(UGU UGC),
    "Tryptophan" => %w(UGG),
    "STOP" => %w(UAA UAG UGA)
  }

  def self.of_codon(codon)
    result = ''
    AMINO_ACIDS.each do |key, value|
      if value.include?(codon)
        result = key
      end
    end
    result
  end

  def self.of_rna(rna)
    raise InvalidCodonError if !rna.include?('U')

    array = []
    rna.chars.each_slice(3) { |subarray| array << subarray.join }
    result = []
    array.each do |codon|
      amino = self.of_codon(codon)
      break if amino == "STOP"
      result << amino
    end

    result.uniq
  end
end

require 'minitest/autorun'
require_relative 'protein_translation'

# rubocop:disable Style/MethodName
class TranslationTest < Minitest::Test
  def test_AUG_translates_to_methionine
    assert_equal 'Methionine', Translation.of_codon('AUG')
  end

  def test_identifies_Phenylalanine_codons
    # skip
    assert_equal 'Phenylalanine', Translation.of_codon('UUU')
    assert_equal 'Phenylalanine', Translation.of_codon('UUC')
  end

  def test_identifies_Leucine_codons
    # skip
    %w(UUA UUG).each do |codon|
      assert_equal 'Leucine', Translation.of_codon(codon)
    end
  end

  def test_identifies_Serine_codons
    # skip
    %w(UCU UCC UCA UCG).each do |codon|
      assert_equal 'Serine', Translation.of_codon(codon)
    end
  end

  def test_identifies_Tyrosine_codons
    # skip
    %w(UAU UAC).each do |codon|
      assert_equal 'Tyrosine', Translation.of_codon(codon)
    end
  end

  def test_identifies_Cysteine_codons
    # skip
    %w(UGU UGC).each do |codon|
      assert_equal 'Cysteine', Translation.of_codon(codon)
    end
  end
  def test_identifies_Tryptophan_codons
    # skip
    assert_equal 'Tryptophan', Translation.of_codon('UGG')
  end

  def test_identifies_stop_codons
    # skip
    %w(UAA UAG UGA).each do |codon|
      assert_equal 'STOP', Translation.of_codon(codon)
    end
  end

  def test_translates_rna_strand_into_correct_protein
    # skip
    strand = 'AUGUUUUGG'
    expected = %w(Methionine Phenylalanine Tryptophan)
    assert_equal expected, Translation.of_rna(strand)
  end

  def test_stops_translation_if_stop_codon_present
    # skip
    strand = 'AUGUUUUAA'
    expected = %w(Methionine Phenylalanine)
    assert_equal expected, Translation.of_rna(strand)
  end

  def test_stops_translation_of_longer_strand
    # skip
    strand = 'UGGUGUUAUUAAUGGUUU'
    expected = %w(Tryptophan Cysteine Tyrosine)
    assert_equal expected, Translation.of_rna(strand)
  end

  def test_invalid_codons
    # skip
    strand = 'CARROT'
    assert_raises(InvalidCodonError) do
      Translation.of_rna(strand)
    end
  end
end