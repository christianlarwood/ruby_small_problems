=begin
input: string of words
output: a string with a single word
problem: write a method that returns the next to last word in the string passed in as an argument
algorithm:
  - split the string into words
  - invoke the `[]` method on the split string and pass in -2 as an argument 

=end

def penultimate(string)
  string.split[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'