=begin
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

algorithm:
  - split number into array of digits
  - iterate through array of digits and return all possible combinations in a new array
  - sort the array and iterate over each number, return number when number > argument

=end
# def next_bigger_num(num)
#   combos = []
#   length = num.digits.size
#   (0...length).each do |index|
#     (index...length).each do |index2|
#       combos << num.digits[index..index2].join.to_i
#       combos << num.digits[index..index2].reverse.join.to_i
#     end
#   end
#   combos.uniq!.sort.each do |number|
#     return number if number > num
#   end
#   -1
# end

def next_bigger_num(input)
  max = max_number(input)
  # iterate over a range of numbers to find the next highest number that contains the same digits as max
  (input + 1..max).to_a.each do |num|
    return num if max == max_number(num)
  end
  -1
end


# method to find the maximum number possible
def max_number(input)
  input.digits.sort.reverse.join.to_i
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
