=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

algo:
  - iterate through each char and if capitalized, split at that index - 1 and lowercase the char

=end
def kebabize(string)
  result = ''
  string.chars.each_with_index do |char, index|
    if char =~ /[A-Z]/
      result += "-" + char.downcase
    elsif char =~ /[a-z]/
      result += char
    end
  end
  result
end

  p kebabize('myCamelCasedString') == 'my-camel-cased-string'
  p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
  