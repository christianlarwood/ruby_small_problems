=begin
What's the expected input(s):
  - hh:mm formatted string
What's the expected output(s):
  - number of minutes represented by the hh:mm
What are the rules (explicit & implicit requirements)?:
  - Cannot use Date and Time methods
  - Should return an integer between 0..1439
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - Write 2 methods that take a time of day in 24-hour format and returns the number of minutes before or after midnight. 
Data Structure: Which data structures will work with each step of your mental model?
  - 
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - convert hours to minutes
  - convert minutes to minutes
  - return time subtracted from 24 hours

=end

# Code:
def after_midnight(string)
  hours = string[0..1].to_i
  minutes = string[3..4].to_i
  (hours * 60 + minutes) % 1440
end

def before_midnight(string)
  hours = string[0..1].to_i
  minutes = string[3..4].to_i
  1440 - (hours * 60) - minutes
end

# Test Cases:
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0