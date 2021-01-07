def scramble(string1, string2)
  string2.chars.each do |char|
    return false if string2.count(char) > string1.count(char)
  end
  true
end

def scramble(string1, string2)
  string2.chars.all? { |char| string1.sub!(char, '') }
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true