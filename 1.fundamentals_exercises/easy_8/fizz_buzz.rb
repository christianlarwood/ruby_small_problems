=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
input: 2 arguments, starting number and ending number
output: print all numbers between the two numbers
algorithm:
  - initialize a result variable and assign to it an emptry string
  - invoke the upto method on starting number and pass in ending number as an argument
    - the block has one parameter, num
    - add a conditional statement:
      - if num % 3 && num % 5, push Fizzbuzz to result
      - if num % 5, push Buzz to result
      - if num % 3, push Fizz to result
      - else push num
    puts result string
=end
def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      result << 'Fizzbuzz'
    elsif num % 5 == 0
      result << 'Buzz'
    elsif num % 3 == 0
      result << 'Fizz'
    else
      result << num
    end
  end
  puts result.join(', ')
end
puts fizzbuzz(1, 15)