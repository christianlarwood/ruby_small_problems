=begin
algorithm
  - initialize a variable `result` and assign to it an empty string
  - initialize a flag variable and assign to it the true
  - split the string and iterate through each char
  - if char is alphabetical 
    - and if flag is true
      - uppercase
    - if flag is not true
      - lowercase
    - change flag to opposite value
  - else push char to result
  - return result
=end
def staggered_case(string)
  result = ''
  is_up = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if is_up
        result << char.upcase
      else
        result << char.downcase
      end
      is_up = !is_up
    else
      result << char
    end
  end
  p result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'