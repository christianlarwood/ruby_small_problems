=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

input: string
output: integer representing the length of the longest substring that's a palindrome

algorithm:
  - initialize a variable `result` and assign to integer 0
  - get index of first char:
    - split the string into chars and iterate over a range (0...string.size), pass each number to block parameter, index1
      - iterate over another range (index1...string.size) pass each number to block parameter, index2
        -  check if substring is a palindrome
          - if yes, and the size of the substring is longer than current result, reassign result to that size
  - return result 
=end
def longest_palindrome(string)
  result = 0
  (0...string.size).each do |index1|
    (index1...string.size).each do |index2|
      result = string[index1..index2].size if is_palindrome?(string[index1..index2]) && string[index1..index2].size > result
    end
  end
  result
end

def is_palindrome?(string)
  string == string.reverse
end

puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7
