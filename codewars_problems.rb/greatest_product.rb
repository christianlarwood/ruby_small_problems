=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

algorithm:

  - iterate through the string from 0..length - 5 and find each 5 digit substring
    - if the product of the substring is greater than the current highest product, replace it
    - increment starting index and ending index by 1
  - return the highest product

=end
def greatest_product(string)
  max_product = 0
  start_index = 0
  end_index = 4
  array_of_digits = string.chars.map(&:to_i)
  loop do
    digits_block = array_of_digits[start_index..end_index]
    if digits_block.reduce(:*) > max_product
      max_product = digits_block.reduce(:*)
    end
    start_index += 1
    end_index += 1
    break if start_index == array_of_digits.size - 4
  end
  max_product
end


p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0