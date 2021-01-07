=begin
56:20
input: a string of characters
output: an array of all substrings of the string
algorithm:
  - initialize a variable `result` and assign to it an empty array
  - initialize a variable `index` and assign to it integer 0
  - within a loop
    - push the return value of invoking the `[]` method on string and passing in 0..index as an argument to result array
    - increment index by 1
    - break out of loop when string == result.last
  - return result array
=end
def substrings_at_start(string)
  result = []
  index = 0
  loop do
    result << string[0..index]
    index += 1
    break if string == result.last
  end
  result
end


puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']