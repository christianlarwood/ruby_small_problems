=begin
algorithm:
  - split the string into words
    - iterate over each word
      - iterate over each character in word and upcase/lowcase

=end

def weirdcase(string)
  result = []
  string.split.each do |word|
    new_word = ''
    word.chars.each_with_index do |char, index|
      new_char = index.even? ? char.upcase : char.downcase
      new_word += new_char
    end
    result << new_word
    new_word = ''
  end
  result.join(' ')
end


p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"