TEXT = "Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.\nSuspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet\nquem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo\nnulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum\ndolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres\net verius meuris, et pheretre mi."

class Text
  def initialize(text)
    @text = text
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end

  def word_count
    @text.split.count
  end
end

require 'minitest/autorun'
require_relative 'text'

class TestText < Minitest::Test
  def setup
    @file = File.open('./sample_text.txt')
    @text = @file.read
    @new_text = Text.new(@text)
    @result = TEXT
    @letter_one = 'a'
    @letter_two = 'e'
  end

  def test_swap
    assert_equal(@result, @new_text.swap(@letter_one, @letter_two))
  end

  def test_word_count
    assert_equal(72, @new_text.word_count)
  end

  def teardown
    @file.close
  end
end


# text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.
# Suspendisse commodo sem arcu. Donec a nisi elit. Nullam eget nisi commodo, volutpat
# quam a, viverra mauris. Nunc viverra sed massa a condimentum. Suspendisse ornare justo
# nulla, sit amet mollis eros sollicitudin et. Etiam maximus molestie eros, sit amet dictum
# dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna. Cras
# et varius mauris, at pharetra mi."

# text.gsub!('a', 'e')
# p text
