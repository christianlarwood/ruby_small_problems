#### Sequence Generator
# def step(start_val, end_val, step_val)
#   recent_val = start_val
#   (start_val..end_val).each do |num|
#     # puts num
#     # yield(num)
#     if recent_val < num && num - step_val == recent_val
#       yield(num)
#       recent_val = num
#     end
#   end
# end

# p step(1, 10, 3) { |value| puts "value = #{value}" }

#### Zipper
# def zip(arr1, arr2)
#   result = []
#   arr1.each_with_index do |element, index|
#     result << [element, arr2[index]]
#   end
#   result
# end

## with a basic loop
# def zip(arr1, arr2)
#   result = []
#   index = 0
#   length = arr1.size
#   while index < length
#     result << [arr1[index], arr2[index]]
#     index += 1
#   end
#   result
# end

# p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]


#### Map
# def map(array)
#   result = []
#   array.each do |element|
#     new_element = yield(element)
#     result << new_element
#   end
#   result
# end

# ## refactored
# def map(array)
#   result = []
#   array.each { |element| result << yield(element) }
#   result
# end

# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map([]) { |value| true } == []
# p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
# p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
# p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

#### Count
# def count(*args)
#   count = 0
#   args.each do |arg|
#     count += 1 if yield(arg)
#   end
#   count
# end

# p count(1, 3, 6) { |value| value.odd? } == 2
# p count(1, 3, 6) { |value| value.even? } == 1
# p count(1, 3, 6) { |value| value > 6 } == 0
# p count(1, 3, 6) { |value| true } == 3
# p count() { |value| true } == 0
# p count(1, 3, 6) { |value| value - 6 } == 3

#### Drop_while
# def drop_while(array)
#   array.select { |element| !yield(element) }
# end

# p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
# p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| true } == []
# p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
# p drop_while([]) { |value| true } == []

#### Each with index
# def each_with_index(array)
#   index = 0
#   length = array.size
#   while index < length
#     value = array[index]
#     yield(value, index)
#     index += 1
#   end
#   array
# end

# result = each_with_index([1, 3, 6]) do |value, index|
#   puts "#{index} -> #{value**index}"
# end

# puts result == [1, 3, 6]

#### Each with object
# def each_with_object(array, object)
#   result = object
#   array.each do |element|
#     yield(element, result)
#   end
#   result
# end

# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << value**2
# end
# p result == [1, 9, 25]

# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << (1..value).to_a
# end
# p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

# result = each_with_object([1, 3, 5], {}) do |value, hash|
#   hash[value] = value**2
# end
# p result == { 1 => 1, 3 => 9, 5 => 25 }

# result = each_with_object([], {}) do |value, hash|
#   hash[value] = value * 2
# end
# p result == {}

#### max_by
# def max_by(array)
#   winner = nil
#   winning_result = 0
#   array.each do |element|
#     result = yield(element)
#     if result.to_i > winning_result
#       winning_result = result
#       winner = element
#     end
#   end
#   winner
# end

# p max_by([1, 5, 3]) { |value| value + 2 } == 5
# p max_by([1, 5, 3]) { |value| 9 - value } == 1
# p max_by([1, 5, 3]) { |value| (96 - value).chr } #== 1
# p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
# p max_by([-7]) { |value| value * 3 } == -7
# p max_by([]) { |value| value + 5 } == nil

#### Each_cons (Part 1)
# def each_cons(array)
#   start_index = 0
#   end_index = 1
#   while end_index < array.size
#     yield(array[start_index], array[end_index])
#     start_index += 1
#     end_index += 1
#   end
#   nil
# end

# hash = {}
# result = each_cons([1, 3, 6, 10]) do |value1, value2|
#   hash[value1] = value2
# end
# p result == nil
# p hash == { 1 => 3, 3 => 6, 6 => 10 }

# hash = {}
# result = each_cons([]) do |value1, value2|
#   hash[value1] = value2
# end
# p hash == {}
# p result == nil

# hash = {}
# result = each_cons(['a', 'b']) do |value1, value2|
#   hash[value1] = value2
# end
# p hash == {'a' => 'b'}
# p result == nil

#### each_cons Part 2
def each_cons(array, num)
  start_index = 0
  end_index = num - 1
  array.each_index do |index|
    value1 = array[index]
    value2 = array[index + 1..index + end_index]
    break if end_index > array.size || value2.empty?
    # puts array[index+1..end_index]
    yield(value1, value2)
  end
  nil
end

# hash = {}
# each_cons([1, 3, 6, 10], 1) do |value|
#   hash[value] = true
# end
# p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash #== { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash #== { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash #== { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash #== {}