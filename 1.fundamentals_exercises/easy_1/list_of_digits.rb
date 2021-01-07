=begin
  Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

  input: a positive integer
  output: an array of digits
  problem: write a method that takes one argument, a positive integer, and returns an array of individual digits. 
  algorithm:
    - write a method with one paramater, num
    - split the number into individual digits
      - use digits.reverse methods
      - convert to string, split, convert back to digits
    - return the array
=end
# def digit_list(number)
#   number.digits.reverse
# end

def digit_list(number)
  number.to_s.split('').map { |char| char.to_i}
end

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

p digit_list(12345)
p digit_list(789)
p digit_list(15)
p digit_list(444)