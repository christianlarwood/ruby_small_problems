=begin
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:
 
12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

input: integer
output: next biggest integer using digits from input
algorithm:
  - find the max from the input
  - iterate over a range of integers that are larger than the input
    - if an integer equals the same digits as our input
      - return that integer
    - else return -1

=end
def next_bigger_num(input)
  max = max_num(input)
  (input + 1..max).each do |num|
    return num if max == max_num(num)
  end
  -1
end

def max_num(input)
  input.digits.sort.reverse.join.to_i
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798