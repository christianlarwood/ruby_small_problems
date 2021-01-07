=begin
Write a program that asks the user to enter an integer greater than zero, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

input: integer > 0, operation
output: integer
algo:
  - ask user for positive integer
  - save integer as a variable `number`
  - ask user for operation: 1) sum or 2) product
  - save operation as a variable `operation`
  - conditional statement: calculate sum or product
    - if 1 (sum)
      - invoke reduce on a range of 1..number and pass in :+ as an argument
    - if 2 (product)
      - invoke reduce on a range of 1..number and pass in :* as an argument
  - return value

=end
def sum_or_product
  puts "Enter a number greater than 0"
  number = gets.chomp.to_i
  puts "Do you want the 1)sum or 2)product?"
  operation = gets.chomp.to_i

  if operation == 1
    (1..number).reduce(:+)
  else 
    (1..number).reduce(:*)
  end
end



p sum_or_product()