=begin
Write a method that converts an english phrase into a mathematical expression, step by step.

input: string of words
output: integer

algorithm:
  - create a hash of key-value pairs for the english words and integers
  - create a numbers variable and assign to it an empty array
  - split the string into words and iterate through the words
    - if a word is english word for number in hash, replace it with the value
  - iterate over the numbers array and use a case statement for operators
    - if plus then add the integer in the index before and in the index after
      - remove the previous integer and the operator and replace the after integer with the new integer
  - return the value in the array

=end
NUMS = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }

def computer(string)
  result = []
  string.split.each do |word|
    if NUMS.include?(word)
      result << NUMS[word]
    else
      result << word
    end
  end
  result.each_with_index do |element, index|
    left_integer = result[index - 1]
    right_integer = result[index + 1]
    if element == "plus"
      right_integer = left_integer + right_integer
    elsif element == "minus"
      right_integer = left_integer - right_integer
    elsif element == "times"
      right_integer = left_integer * right_integer
    elsif element == "divided"
      result[index + 1] = result[index + 1..inde] + result[index + 2]
      right_integer = left_integer / right_integer
    end
  end
  result.last
end

# p computer("two plus two") == 4
# p computer('seven minus six') == 1
# p computer('zero plus eight') == 8

# More operations:
# p computer('two plus two minus three') == 1
# p computer("three minus one plus five minus 4 plus six plus 10 minus 4") == 15

# Compute in order of appearance (not order of operations):
p computer("eight times four plus six divided by two minus two") == 17 # 17, not 33
p computer('one plus four times two minus two') == 8# 8, not 7
p computer('nine divided by three times six') == 18 # 18


# Computer using order of operations.
# p computer('eight times four plus six divided by two minus two')  # 33
# p computer('one plus four times two minus two') # 7
# p computer('nine divided by three times six') # 18
# p computer('seven plus four divided by two') # 9
# p computer('seven times four plus one divided by three minus two') # 26
# p computer('one plus four times three divided by two minus two')  # 5
# p computer('nine divided by three times six') # 18
