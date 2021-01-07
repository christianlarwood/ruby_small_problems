def swap_name(name)
  name_array = name.split
  name_array[1], name_array[0] = name_array[0], name_array[1]
  p name_array.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'