=begin
algorithm:
  - initialize a result variable and assign to it a hash with
  - initialize a total_chars variable and assign to it the string.chars.size
  - split the string by characters and iterate over each char
    - conditional statement:
      - if char is lowercase: push initialize key-value pair and push count / total_chars.to_f
      - if char is capitalized: push 
      - if char is anything else:

=end
def letter_percentages(string)
  result = { :lowercase => 0, :uppercase => 0, :neither => 0}
  total_chars = string.chars.size
  string.chars.each do |char|
    if char =~ /[a-z]/
      result[:lowercase] += 1
    elsif char =~ /[A-Z]/
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  result.each do |k, v|
    result[k] = ((v.to_f / total_chars.to_f) * 100).round(2)
  end
  result
end

puts letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}
puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }