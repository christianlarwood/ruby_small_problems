=begin
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

input: a string
output: an array with all substrings of a string
algorithm:
  - initialize a variable `result` and assign to it an empty array
  - initialize a start variable
  - initialize an index variable
  - within a loop
    - push return value of invoking the method and passing in string[start..-1] as an argument
    - increment start by 1
    - break out of loop when result.last == string[-1]
  - return result array
=end
# def substrings_at_start(string)
#   result = []
#   index = 0
#   loop do
#     result << string[0..index]
#     index += 1
#     break if string == result.last
#   end
#   result
# end

# def substrings(string)
#   result = []
#   start_value = 0
#   loop do 
#     result << substrings_at_start(string[start_value..-1])
#     start_value += 1
#     break if start_value == string.size
#   end
#   result.flatten
# end

# other solution
def substrings(string)
  result = []
  (0...string.size).each do |index|
    (index...string.size).each do |index2|
      result << string[index..index2]
    end
  end
  p result
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]