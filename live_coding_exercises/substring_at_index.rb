=begin 
Write a method that will return a substring based on specified indices.
inputs: string, starting index, ending index
outputs: string
algo:
  - invoke [] method on the string and pass in starting_index and ending_index as a range

=end
def substring(string, start_index, end_index = 0)
  if end_index == 0
    string[start_index]
  else
    string[start_index..end_index]
  end
end

p substring("honey", 0, 2) == "hon"
p substring("honey", 1, 2) == "on"
p substring("honey", 3, 9) == "ey"
p substring("honey", 2) == "n"
