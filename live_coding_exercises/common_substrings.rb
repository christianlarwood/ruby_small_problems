=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, and false if not. A substring is longer than 1 character.

input: 2 strings
output: boolean

algorithm:
  - initialize result variable and assign to empty array
  - split string1 into chars
    - iterate over each char
      - if char is in string2
        - push char to result array
        - find index of char using find_index
        - remove char from string2 at its index
  - invoke .empty on result

=end
def substring_test(string1, string2)
  result = 0
  string1.downcase.chars.each do |char|
    if string2.downcase.chars.include?(char)
      result += 1
      char_index = string2.downcase.chars.find_index(char)
      string2[char_index] = ''
    end
  end
  result <= 1 ? false : true
end


puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('134567', '541265') == true