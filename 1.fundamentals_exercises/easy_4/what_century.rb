=begin
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

What's the expected input(s):
  - an integer representing a year
What's the expected output(s):
  - a string representing the century
What are the rules (explicit & implicit requirements)?:
  - New centuries begin in years that end with 01
  - years that end in 0 = th, 1 = st, 2 = nd, 3 = rd, 4+ = th
  - years that end in 11, 12, 13 = th
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes a year as input and returns the century. 
Data Structure: Which data structures will work with each step of your mental model?
  - variables to calculate the century and the ending
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - calculate the century. Account for new centuries
    - divide year by 100 if
  - calculate the century ending based on the century

=end

# Code:
def century(year)
  #find century
  century = 0
  if year % 100 == 1
    century = (year / 100) + 1
  else 
    century = (year / 100)
  end


# Test Cases:
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'