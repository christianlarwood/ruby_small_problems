=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.
input: string
output: a new string with all duplicate letters removed
algorithm:
  - initialize a variable  `result` and assign to it an empty string
  - initialize `counter` variable and assign it to integer 1
  - iterate over each character
    - compare the current character to the next
      - if they are the same, do nothing else
      - if they are different, add the character to result string
  return result
=end
def crunch(string)
  result = ''
  counter = 1
  loop do
    break if counter > string.size
    if string[counter - 1] != string[counter]
      result << string[counter - 1]
    end
    counter += 1
  end
  result
end

def crunch(string)
  result = ''
  string.chars.each_with_index do |char, index|
    n = index + 1
    if char != string[n]
      result << char
    end
  end
  result
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''