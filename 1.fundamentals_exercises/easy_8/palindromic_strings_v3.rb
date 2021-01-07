=begin
- initialize a result variable and assign to it an empty array
- capture the first element in the string 
  - iterate over all other elements in the string
  - conditional:
    - if a substring equals substring.reverse, push it to result array
      - ignore single character substrings
  - repeat loop until you've iterated over the last element
- return result array

=end
def palindromes(string)
  result = []
  (0...string.size).each do |index|
    (index...string.size).each do |index2|
      if string[index..index2] == string[index..index2].reverse && string[index..index2].size > 1
        result << string[index..index2]
      end
    end
  end
  result
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]