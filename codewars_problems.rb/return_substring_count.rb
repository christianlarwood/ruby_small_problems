=begin
Complete the solution so that it returns the number of times the search_text is found within the full_text.

input: 2 strings: search and full_text
output: integer representing the number of times search text appears in the full_text

algorithm:
  - result equals:
  - invoke count on full_text and pass in search as argument divided by search.length


=end
def solution(full_text, search)
  full_text.count(search) / search.size
end

p solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') # should return 1