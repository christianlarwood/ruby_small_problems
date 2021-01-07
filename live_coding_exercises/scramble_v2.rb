=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise return false.

input: 2 strings
output: boolean
algorithm:
  - iterate through string1 chars
  - see if char in string1 is in string2
    - if they are, increment counter by 1
    - and remove the character
  - return counter == string2.size


=end
def scramble(string1, string2)
  count = 0
  size = string2.size
  string1.chars.each do |char|
    if string2.chars.include?(char)
      count += 1
      string2.sub!(char, '')
    end
  end
  count == size
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true