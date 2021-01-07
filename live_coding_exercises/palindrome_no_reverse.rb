=begin
39:00 --> 31:00
write a method to determine if a word is a palindrome, without using the reverse method",
 - initialize a variable `reversed_word` and assign to it an empty string
 - initialize a variable `index` and assign to it an integer -1
 - invoke loop and pass in do..end block
    - break statement to break out of loop when index < -string.size
    - add char to reversed_word using `[]` method
    - decrement index by 1
  - compare reversed_word to string


=end
def palindrome(string)
  reversed_word = ''
  index = -1
  loop do
    break if index < -string.size
    reversed_word += string[index]
    index -= 1
  end
  reversed_word == string
end


puts palindrome('racecar') == true
puts palindrome('abcde') == false
puts palindrome('madam') == true