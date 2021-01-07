=begin
9:00
In this Kata, you will be given two integers n and k and your task is to remove k-digits from n and return the lowest number possible, without changing the order of the digits in n. Return the result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 and return the lowest possible number. The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', because we have removed 8 and 9.

Input: number and digits to remove
Output: string with k length

Rules:
  - remove k digits from the string
  - return lowest possible number w/o changing the order of the digits
  - 
Approach:
  - iterate over each digit and compare the current digit to the previous
  - if the current digit is less than the previous one, delete the previous digit
  - return a string of digits

algorithm:
  - loop k times
    - iterate over digits starting at 1 and ending at length - 1
      - if the current digit is less than the previous one, delete the previous digit
  - return a string
=end
def solve(number, k)
  array = number.digits.reverse
  length = array.size
  k.times do
    1.upto(array.size - 1) do |index|
      if array[index - 1] > array[index]
        array.delete_at(index - 1)
        break
      end
    end
  end
  array.first(length - k).join
end

p solve(123056,1) #== '12056'
p solve(123056,2) #== '1056'
p solve(123056,3) == '056'
p solve(123056,4) == '05'
p solve(1284569,1) == '124569'
p solve(1284569,2) == '12456'
p solve(1284569,3) == '1245'
p solve(1284569,4) == '124'