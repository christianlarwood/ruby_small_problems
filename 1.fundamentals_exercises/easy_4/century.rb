=begin
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
algorithm:
  - calculate the correct century
    - if year % 100 == 1, then it's a new century
  - calculate the correct suffix 
      - 0 = th
      - 1 = st
      - 2 = nd
      - 3 = rd
      - 4+ = th
      - 11, 12, 13 = th

=end
def century(year)
  century, remainder = year.divmod(100)
  if remainder == 0
    century + 1
  end
  p century
  suffix = get_suffix(century)

  puts "#{century}#{suffix}"
end 

  # suffix
def get_suffix(century)
  return 'th' if [11, 12, 13].include?(century)

  case century[-1]
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else        'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'