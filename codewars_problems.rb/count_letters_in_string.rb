=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

input: string
output: hash with char counts in alphabetical order
approach:
  - create a hash
  - iterate over each character and sent total count in string to hash
  - sort hash
  - return hash

algorithm:
  - initialize an empty hash using Hash.new(0)
  - split characters and iterate over each
    - add key-value pairs to hash
      - invoke count on string for the totals(values)
  - invoke sort_by! on hash and sort by key 
  - return hash
=end
def letterCount(string)
  hash = Hash.new(0)
  string.chars.each do |char|
    hash[char.to_sym] = string.count(char)
  end
  result = hash.sort_by { |k, _| k }
  result.to_h
end

p letterCount('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
