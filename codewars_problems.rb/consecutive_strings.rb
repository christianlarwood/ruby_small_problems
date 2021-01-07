=begin
You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.
Example:

longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

Input: array of strings
Output: string
Rules:
  - first longest string consisting of k consecutive strings
  - return '' if n = 0, k <= 0, k > n

Approach:
  - return "" if...
  - combine first two strings and set as base
  - combine next 2 consecutive strings and compare to base
    - if greater than base, return new string
    - otherwise keep on looping
  - return the longest string

Algorithm:
  - new_array = array[0..-1]
  - return '' if string.size = 0, k <= 0, k > string.size
  - length = k
  - current_longest_string = new_array.slice!(0, k).join
  - first_word_index = 0
  - second_word_index = 1
  - loop
      - break if new_array.size == 0
      - check if the first + second is longer than current string
        - if it is return the longest string.
  

=end
def longest_consec(array, k)
  return '' if array.empty? || k <= 0 || k > array.size
  starting_index = 0
  current_longest_string = array.slice(starting_index, k).join
  loop do
    break if starting_index == array.size - k
    starting_index += 1
    new_substring = array.slice(starting_index, k).join
    if new_substring.size > current_longest_string.size
      current_longest_string = new_substring
  end
  current_longest_string
end

p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2) == "abigailtheta"
p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1) == "oocccffuucccjjjkkkjyyyeehh"
p longest_consec([], 3) == ""
p longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2) == "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
p longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2) == "wlwsasphmxxowiaxujylentrklctozmymu"
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) == "ixoyx3452zzzzzzzzzzzz"
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0) == ""
