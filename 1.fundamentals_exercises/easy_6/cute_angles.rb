=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
What's the expected input(s):
  - floating point number
What's the expected output(s):
  - string that represents the angle in degrees, minutes, and seconds
What are the rules (explicit & implicit requirements)?:
  - a degree has 60 minutes
  - a minute has 60 seconds
  - 
Clarifying Questions:
  - 
  - 
Describe your mental model (interpretation) of the problem:
  - write a method that takes a floating point integer as an argument and returns a string with degrees, minutes, and seconds represented. 
Data Structure: Which data structures will work with each step of your mental model?
  - variables for degrees, minutes, seconds
  - 
Algorithm: What are the exact steps that will transform the input(s) to the desired output(s)? Use your mental model and data structure.
  - calculate degrees & calculate minutes
    - use degrees, minutes = num.divmod(1)
  - calculate minutes
    - minutes, seconds = (minutes * 60).divmod(1)
  - calculate seconds
    - seconds * 60
  - use string interpolation to combine the objects and return answer
    - use format(%02g, variable)
=end

# Code:
DEGREE = "\xC2\xB0"

def dms(number)
  degrees, min = number.divmod(1)
  degrees = format('%02g', degrees)
  minutes, sec = (min * 60).divmod(1)
  minutes = format('%02d', minutes)
  sec *= 60
  seconds = format('%02d', sec)
  %(#{degrees}#{DEGREE}#{minutes}'#{seconds}")
end

# Test Cases:
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
