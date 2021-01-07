def substrings_at_start(string)
  results = []
  index = 0
  loop do
    break if index == string.size
    results << string[0..index]
    index += 1
  end
  results
end


puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']