NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  if string.start_with?('-', '+')
    first_char = string.slice!(0)
  end
  digits_array = string.chars.map { |char| NUMBERS[char] }

  result = 0
  digits_array.each { |num| result = 10 * result + num }

  if first_char == '-'
    -result
  else result
  end
end  

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100