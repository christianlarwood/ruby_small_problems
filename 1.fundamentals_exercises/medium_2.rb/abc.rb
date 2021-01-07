=begin
input: string
output: boolean
algorithm:
  - initialize a hash with the key-value pairs
  - iterate over each character
    - if value is included in the word, return false
  - return true

=end
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) > 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
