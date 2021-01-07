=begin
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

What's the expected input(s):
  - a positive integer 
What's the expected output(s):
  - boolean
What are the rules (explicit & implicit requirements)?:
  - if the year is divisible by 400 and 100 it's a leap year
  - if the year is divisible by 100 it's not a leap year
  - if the year is divisible by 4 but not divisible by 100 it's a leap year
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that returns a boolean if the integer is a leap year or not. The year must by divisible by 4 but not 100 or must be divisible by 100 and 400 to be a leap year
Data Structure: Which data structures will work with each step of your mental model?
  - conditional statement
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - conditional if a leap year
  - else false

=end

# Code:
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 100 == 0 && year % 400 == 0
    true
  else
    false
  end
end

# official solution
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# further exploration
def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end
end

# Test Cases:
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true