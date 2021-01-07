=begin
algorithm:
  - initialize a variable `result` and assign to it an empty array
  - invoke the each method on the range 0...string.size with a do..end block and one parameter, index
    - invoke the each method on the range index...string.size with a do..end block and one parameter, index2
      - invoke the string variable and pass in the range index..index2 as an argument
      - conditional statement: if the return value is equal to the return value called on reverse method, then push to result array. 
  - return result array

=end


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