=begin
Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.
23:30
What's the expected input(s):
  - an integer
What's the expected output(s):
  - hh:mm representing the integer
What are the rules (explicit & implicit requirements)?:
  - cannot use Date and Time classes
  - 
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write a method that takes an integer representing time in minues and returns the time of day in hh:mm format
Data Structure: Which data structures will work with each step of your mental model?
  - minutes var
  - hours var
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - define a method with one parameter
  - minutes in a day = 1440
  - find the hours
    - number / 60
  - find the minutes
    - number % 60 
  - return the time of day in hh:mm format

=end

# Code:
def time_of_day(number)
  hour, minutes = number.divmod(60)
  hour = format('%02g', hour % 24)
  minutes = format('%02g', minutes % 60)
  "#{hour}:#{minutes}"
end

# Test Cases:
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"