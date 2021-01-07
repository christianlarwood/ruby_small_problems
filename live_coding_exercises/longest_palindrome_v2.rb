=begin
Find the length of the longest substring in the given string that is the same in reverse. If the length of the input string is 0, return value must be 0

Example:
longest_palindrome("I like racecars that go fast") == 7

input: string
output: integer representing the longest palindrome in the string
algo:
  - initialize a variable size and assign to it integer 0
  - iterate through the string and find all palindromes
    - for each palindrome find it's size. If the size is bigger than the previous largest palindrome, replace the size
  - return size

=end
def longest_palindrome(string)
  longest = 0
  (0...string.size).each do |index|
    (index...string.size).each do |index2|
      if string[index..index2] == string[index..index2].reverse
        if string[index..index2].size > longest
          longest = string[index..index2].size
        end
      end
    end
  end
  longest
end

puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7