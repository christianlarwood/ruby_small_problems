=begin
algorithm
  - initialize NUMBERS constant and assign array of integers 0..9
  - initialize result variable and assign value 0
  - iterate through each character with chars.each
    - grab the integer associated with the char
    - add it to sum and multiply by 10
  - return result

=end
NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  result = 0
  string.chars.each do |char|
    result = (result * 10) + NUMBERS[char]
  end
  result
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570