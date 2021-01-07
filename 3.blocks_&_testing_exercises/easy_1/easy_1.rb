#### Optional Blocks
# def compute
#   result = yield if block_given?
#   result.nil? ? "Does not compute." : result
# end

# ## official answer
# def compute
#   return 'Does not compute.' unless block_given?
#   yield
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

## further exploration
# def compute(arg)
#   return 'Does not compute.' unless block_given?
#   yield(arg)
# end

# p compute(1) { |arg| arg + 2}
# p compute(10)
# p compute("hello") { |arg| arg + " partner"}

####Find Missing Numbers
# def missing(array)
#   first = array.first
#   last = array.last
#   (first..last).to_a - array
# end

# p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) == []
# p missing([1, 5]) == [2, 3, 4]
# p missing([6]) == []

####Divisors
# def divisors(num)
#   divisors = []
#   1.upto(num).each do |divisor|
#     divisors << divisor if num % divisor == 0
#   end
#   divisors
# end

# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

#### Encrypted Pioneers
# pioneers = [
#     "Nqn Ybirynpr",
#     "Tenpr Ubccre",
#     "Nqryr Tbyqfgvar",
#     "Nyna Ghevat",
#     "Puneyrf Onoontr",
#     "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
#     "Wbua Ngnanfbss",
#     "Ybvf Unvog",
#     "Pynhqr Funaaba",
#     "Fgrir Wbof",
#     "Ovyy Tngrf",
#     "Gvz Orearef-Yrr",
#     "Fgrir Jbmavnx",
#     "Xbaenq Mhfr",
#     "Fve Nagbal Ubner",
#     "Zneiva Zvafxl",
#     "Lhxvuveb Zngfhzbgb",
#     "Unllvz Fybavzfxv",
#     "Tregehqr Oynapu"
# ]

# ROT13 = { 'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y', 'm' => 'z'}

# def decipher(names)
#   result = []
#   names.each do |name|
#     fixed_name = []
#     name.downcase.chars.each do |char|
#       if char =~ /[^a-z]/i
#         fixed_name << char
#       elsif ROT13.include?(char) # returns true if char is a key
#         fixed_name << ROT13[char]
#       else
#         fixed_name << ROT13.key(char) # returns key of a given value
#       end
#     end
#     # fixed_name.each do |name|

#     result << fixed_name.join
#   end
#   result
# end

# p decipher(pioneers)

#### Iterators: True for Any?
# def any?(array)
#   flag = false
#   array.each do |element|
#     result = yield(element)
#     return true if result
#   end
#   flag
# end

# ## official answer
# def any?(array)
#   array.each { |item| return true if yield(item) }
#   false
# end

# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?([]) { |value| true } == false

####  Iterators: True for all?
# def all?(collection)
#   collection.each { |element| return false if yield(element) == false }
#   true
# end

# p all?([1, 3, 5, 6]) { |value| value.odd? } == false
# p all?([1, 3, 5, 7]) { |value| value.odd? } == true
# p all?([2, 4, 6, 8]) { |value| value.even? } == true
# p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p all?([1, 3, 5, 7]) { |value| true } == true
# p all?([1, 3, 5, 7]) { |value| false } == false
# p all?([]) { |value| false } == true

#### Iterators: True for None?
# def none?(collection)
#   collection.each { |element| return false if yield(element)}
#   true
# end

# p none?([1, 3, 5, 6]) { |value| value.even? } == false
# p none?([1, 3, 5, 7]) { |value| value.even? } == true
# p none?([2, 4, 6, 8]) { |value| value.odd? } == true
# p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p none?([1, 3, 5, 7]) { |value| true } == false
# p none?([1, 3, 5, 7]) { |value| false } == true
# p none?([]) { |value| true } == true

#### Iterators: True for One?
# def one?(collection)
#   collection.select { |element| yield(element) }.size == 1
# end

# p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
# p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
# p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
# p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
# p one?([1, 3, 5, 7]) { |value| true }           # -> false
# p one?([1, 3, 5, 7]) { |value| false }          # -> false
# p one?([]) { |value| true }                     # -> false

#### Count Items
# def count(array)
#   truths_count = 0
#   array.each do |element|
#     result = yield(element)
#     truths_count += 1 if result
#   end
#   truths_count
# end

## without iterative methods or loops
# def count(array)
#   truths_count = 0
#   0.upto(array.size - 1) do |index|
#     element = array[index]
#     truths_count += 1 if yield(element)
#   end
#   truths_count
# end

# p count([1,2,3,4,5]) { |value| value.odd? } == 3
# p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
# p count([1,2,3,4,5]) { |value| true } == 5
# p count([1,2,3,4,5]) { |value| false } == 0
# p count([]) { |value| value.even? } == 0
# p count(%w(Four score and seven)) { |value| value.size == 5 } == 2