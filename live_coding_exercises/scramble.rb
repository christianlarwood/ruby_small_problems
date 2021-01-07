=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise return false. 

input: 2 strings
output: boolean: true or false

algorithm:
  - initialize a counter variable and assign to integer 0
  - initialize a variable `string_size` and assign to string2.size
  - split the first string into chars and iterate over each char
    - if the character is included in string2
      - increment counter by 1
      - find the index of the char
        - remove the char at the index from string2
  - compare count to string2.size

=end
def scramble(string1, string2)
  counter = 0
  string2_size = string2.size
  string1.chars.each do |char|
    if string2.chars.include?(char)
      counter += 1
      index_of_char = string2.chars.find_index(char)
      string2.sub!(char, '')
    end
  end
  counter == string2_size
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true