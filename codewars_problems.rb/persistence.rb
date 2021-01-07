=begin
algorithm:
  - initialize counter and assign to 0
  - loop until sum is a single digit
  - split number into digits and find multiplicative sum
    - repeat until sum is a single digit
    - increment counter by 1 each successful time
  - return counter



=end
def persistence(num)
  count = 0
  sum = num
  loop do
    break if sum.digits.size == 1
    sum = sum.digits.reduce(:*)
    count += 1
  end
  count
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4