=begin
algorithm:
  - initialize a variable `result` and assign to it an empty string
  - split the string into characters and iterate over each char
    - multiply each char by 2 and add to the result variable
  return result string
=end
def repeater(string)
  result = ''
  string.chars.each do |char|
    result += char * 2
  end
  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''