=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Input: string
Output: hash of key-value pairs

Rules:
  - key must be a symbol, not a string

Approach:
  - iterate over each char in the string and add it as a key to the hash and the total count of the char in the string as a value

Algorithm:
  - initialize a new hash
  - split the string into chars and iterate over each char
    - add the char and the total count of char in string to the hash
  - return char

=end
def letterCount(string)
  hash = Hash.new(0)
  string.chars.each do |char|
    hash[char.to_sym] += 1 #string.count(char)
  end
  hash
end

p letterCount('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}