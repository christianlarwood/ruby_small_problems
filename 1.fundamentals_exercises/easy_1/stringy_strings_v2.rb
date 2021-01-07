=begin
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

algorithm:
  - initialize result variable and assign to it an empty string
  - invoke the times method on the range (0..num) and pass in do..end block with one paramater, index
    - within the block, we'll have a conditional statement:
      - if index is even push '1' to result
      - else push '0' to result
  - return result

=end

def stringy(num)
  result = ''
  0.upto(num - 1) do |index|
    if index.even?
      result += '1'
    else
      result += '0'
    end
  end
  result
end

def stringy(num)
  result = ''
  num.times do |index|
    value = index.even? ? '1' : '0'
    result += value
  end
  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# further exploration
def stringier(num, choice = '1')
  result = ''
  num.times do |index|
    if choice == '1'
      value = index.even? ? '1' : '0'
    else
      value = index.even? ? '0' : '1'
    end
    result += value
  end
  result
end

puts stringier(5, '0') == '01010'