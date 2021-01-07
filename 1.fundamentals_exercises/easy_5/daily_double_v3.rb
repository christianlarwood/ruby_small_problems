=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

- initialize a result variable and assign to empty string
- split the string into characters and iterate over each char
  - compare the current char with the one next to it. If equal do nothing, else add char to result
- return result

=end
def crunch(string)
  result = ''
  string.chars.each_with_index do |char, index|
    if char != string[index + 1]
      result += char
    end
  end
  result
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''