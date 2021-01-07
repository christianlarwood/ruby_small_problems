=begin
rules:
  - chars in string2 must be in string1, not vice versa
  - only lowercase letters will be used
  - return true if all chars in string2 and in string1, false otherwise
algorithm:
  - iterate over each char in string2
    - if char is not in string1, return false
    - if char is in string1, replace char with nothing
  - return true


=end
def scramble(string1, string2)
  string2.chars.each do |char|
    if string1.include?(char)
      string1.sub!(char, '')
    else
      return false
    end
  end
  true
end

def scramble(string1, string2)
  string2.chars.each do |char|
    return false if string2.count(char) > string1.count(char)
  end

  true
end

def scramble(string1, string2)
  string2.chars.all? { |char| string1.sub!(char, '') }
end

p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true