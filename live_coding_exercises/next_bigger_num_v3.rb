=begin
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

Input: integer
Output: integer representing the next biggest number
Approach:
  - iterate over a range of numbers and find the next biggest number which has the same digits as the input number
  - if there is no number, return -1

Algorithm:
  - get the biggest number possible from input number
  - iterate over a range of numbers
    - if the number equals the max number, return it
  - return -1 if max_number == input number

=end
def next_bigger_num(input)
  max_number = input.digits.sort.reverse.join.to_i
  return -1 if input == max_number
  (input + 1..max_number).each do |number|
    return number if number.digits.sort.reverse.join.to_i == max_number
  end
end


p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
