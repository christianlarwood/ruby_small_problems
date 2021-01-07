=begin
https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0

input: array of strings
output: array of integers

algorithm:
  - initialize an ALPHABET array
  - iterate over each word in the array as downcase
    - iterate over each char in the word
      - if the index of the char equals the index of the char in ALPHABET, increment counter by 1
    - push counter to result array
    - reset the counter each iteration
  - return result array

=end
def solve(arr)
  alphabet = ('a'..'z').to_a
  result = []
  arr.each do |word|
    counter = 0
    word.downcase.chars.each_with_index do |char, index|
      if char == alphabet[index]
        counter += 1
      end
    end
    result << counter
    counter = 0
  end
  result
end

solve(["abode","ABc","xyzD"]) = [4, 3, 1]