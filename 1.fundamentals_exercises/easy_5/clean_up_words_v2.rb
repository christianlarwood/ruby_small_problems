=begin
algorithm:
  - initialize result variable 
  - split the string into characters
  - iterate over each character
    - if char is not alphabetical then replace with ' ' and push to result unless result.last == ' '
    - if char is alphabetical then push char to result
  - return result
=end
def cleanup(string)
  result = []
  string.chars.each do |char|
    if char =~ /[a-z]/i
      result << char
    else
      result << ' ' unless result.last == ' '
    end
  end
  result.join
end

puts cleanup("---what's my +*& line?") == ' what s my line '