vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  result = {}

  array.each do |element|
    result[element] = array.count(element)
  end

  result.each do |k, v|
    puts "#{k} => #{v}"
  end
end

count_occurrences(vehicles)