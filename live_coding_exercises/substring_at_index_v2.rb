=begin
# Write a method that will return a substring based on specified indices.
Input: string, starting index, ending index
Output: substring of the string

Approach:
  - find and return the substring from the string starting at the index and ending at the end index

Algorithm:
  - add a default ending index to account for last test case
  - invoke slice on string and pass in starting index and ending index


=end
def substring(string, start_index, end_index)
  if end_index == 0
    string[start_index]
  else
    string[start_index..end_index]
  end
end

p substring("honey", 0, 2) #== "hon"
p substring("honey", 1, 2) #== "on"
p substring("honey", 3, 9) #== "ey"
p substring("honey", 2)    #== "n"
