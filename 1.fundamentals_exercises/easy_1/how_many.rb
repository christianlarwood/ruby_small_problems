=begin
Write a method that counts the number of occurrences of each element in a given array.

input: an array of string elements
output: total count of each string element in the array
problem: write a method that counts the number of occurrences of each element in a given array
algorithm:
  - write a method that takes one parameter
  - iterate through the array and count each element
    - each method to iterate over each element and use the count method to tally
    - puts the element and the count to the screen
  - return the total count of each element

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  hash = {}

  array.each do |vehicle|
    hash[vehicle] = array.count(vehicle)
  end

  hash.each do |vehicle, total|
    puts "#{vehicle} => #{total}"
  end
end

count_occurrences(vehicles)