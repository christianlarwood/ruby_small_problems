# sum

def sum(integer)
  (1..integer).reduce(:+)
end

puts sum(5) == 15

def product(integer)
  (1..integer).reduce(:*)
end

puts product(6) == 720