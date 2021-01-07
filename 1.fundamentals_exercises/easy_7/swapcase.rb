def swapcase(string)
  result = ''
  string.chars.each do |char|
    if char =~ /[a-z]/
      result << char.upcase
    else
      result << char.downcase
    end
  end
  result
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'