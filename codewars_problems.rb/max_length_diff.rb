=begin

You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. Let x be any string in the first array and y be any string in the second array.

Find max(abs(length(x) − length(y)))

If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).

#Example:

a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
mxdiflg(a1, a2) --> 13

Input: 2 arrays of strings
Output: integer representing the max diff between longest_a2 and shortest_a1 strings

Rules:
  - return -1 if a1 or a2 are empty
  - always substracting shortest_a1 string in a1 from longest_a2 in a2

Approach:
  - find the shortest_a1 string in a1
  - find the longest_a2 string in a2
  - return the difference
  - if -1 either array is empty

Algorithm:
  - return -1 if a1 or a2 empty? 
  - initialize variable shortest_a1 and assign to return value of sorting array by string length
  - initialize variable longest_a2 and assign to return value of sorting array by string length
  - shortest_a1 = a1.first
  - longest_a2 = a2.last
  - return the difference

=end
def max_diff(a1, a2)
  return -1 if a1.empty? || a2.empty?
  shortest_a1 = a1.sort_by(&:size).first.size
  longest_a2 = a2.sort_by(&:size).last.size
  longest_a2_a1 = a1.sort_by(&:size).last.size
  shortest_a1_a2 = a2.sort_by(&:size).first.size
  if ((shortest_a1 - longest_a2).abs) > ((longest_a2_a1 - shortest_a1_a2).abs)
    (shortest_a1 - longest_a2).abs
  else
    (longest_a2_a1 - shortest_a1_a2).abs
  end
end

a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
p max_diff(a1, a2) == 13