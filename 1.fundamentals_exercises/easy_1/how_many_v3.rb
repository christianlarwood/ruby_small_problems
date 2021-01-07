=begin
input: array of string elements
output: count of each element on separate lines
algorithm: 
  - initialize variable `result` and assign to it an empty hash using the Hash.new(0) syntax. 
  - send key-value pairs to the result hash
    - invoke the each method on vehicles and pass in a do..end block with one parameter `vehicle`
      - invoke `[]` on result and pass in vehicle as an argument and assign the key to:
        - invoke count on vehicles and pass in vehicle as an argument
  - iterate over the hash and output each key-value pair
      - invoke each on the result hash and output the key-value pair

=end
def count_occurrences(vehicles)
  result = Hash.new(0)
  vehicles.each do |vehicle|
    result[vehicle] = vehicles.count(vehicle)
  end
  result.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)