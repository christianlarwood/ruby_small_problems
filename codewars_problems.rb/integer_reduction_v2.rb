=begin
In this Kata, you will be given two integers n and k and your task is to remove k-digits from n and return the lowest number possible, without changing the order of the digits in n. Return the result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 and return the lowest possible number. The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', because we have removed 8 and 9.

Input: number, k
Output: string

Rules:
  - remove k digits from number to return the lowest number possible without changing the order of the digits.
  - return result as a string

Approach:
  - iterate through num and remove k digits
  - return a string

Algorithm:
  - invoke times method on k
    - invoke upto on 1 and pass in array.size - 1
      - compare the previous element to the current element
        - if greater, remove the previous element from the array and break out of current loop
  - return a string with the correct length

=end
def solve(number, k)
  number = number.digits.reverse
  length = number.size
  k.times do
    1.upto(number.size - 1) do |index|
      if number[index - 1] > number[index]
        number.delete_at(index - 1)
        break
      end
    end
  end
  number.first(length - k).join
end

p solve(123056,1) #== '12056'
p solve(123056,2) #== '1056'
p solve(123056,3) == '056'
p solve(123056,4) == '05'
p solve(1284569,1) == '124569'
p solve(1284569,2) == '12456'
p solve(1284569,3) == '1245'
p solve(1284569,4) == '124'