=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

algorithm:
  - invoke times method on rows
  - starts increas by odd value
  - spaces increase by even value

=end
def diamond(n)
  start = n / 2
  start.downto(0) do |num|
    puts num 