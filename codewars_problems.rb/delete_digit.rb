=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

algorithm:
  - initialize a result variable and assign to integer 0
  - iterate through num and delete a digit at each index
    - if the new number is larger than result, replace it, else move on
  - return result

=end
def delete_digit(number)
  maximal = 0
  number.digits.reverse.each_with_index do |digit, index|
    new_num = number.digits.reverse[0..-1]
    new_num.delete_at(index)
    if new_num.join.to_i > maximal
      maximal = new_num.join.to_i
    end
  end
  maximal
end


p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

