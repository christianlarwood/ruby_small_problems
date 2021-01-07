=begin
00000 - start (all off)
11111 - first pass (all on)
10101 - 2nd pass (toggle 2, 4...)
10001 - 3rd pass (toggle 3, 6...)
10011 - 4th pass (toggle 4, 8...)
10010 - 5th pass (toggle 5, 10...)

n = 6
111111
101010
100011
100111
100101
100100

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

- results variable with empty array
- initialize a string of 1s with length of n
- iterate over the string n times with parameter, index
  - set index = index + 1
  - change character at index
- iterate over the array and if the index is divisble by number, change the character
=end
def toggle(number)
  array = ("1" * number).to_a.split('')
  array.each_with_index do |char, index|
    num = index + 2
    
end


puts toggle(5) == [1, 4]
puts toggle(10) == [1, 4, 9]