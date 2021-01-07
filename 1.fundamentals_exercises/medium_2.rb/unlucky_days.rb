=begin
algorithm:
  - create a hash with key-value pairs of months and arrays of dates
  - iterate through each month
    - iterate through through each array and pass each day to be checked if it's a friday
    - if true, increment counter by 1
  - return counter
=end
DAYS = {
  1 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],
  2 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28],
  3 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],
  4 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30],
  5 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],
  6 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30],
  7 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],
  8 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],
  9 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30],
  10 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31],
  11 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30],
  12 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
}

# def friday_13th(year)
#   count_of_friday_13th = 0
#   DAYS.each do |month, v|
#     v.each do |day|
#       t = Time.local(year, month, day)
#       count_of_friday_13th += 1 if t.friday? && day == 13
#     end
#   end
#   count_of_friday_13th
# end

# other solutions
def friday_13th(year)
  count_of_friday_13th = 0
  1.upto(12) do |month|
    t = Time.local(year, month, 13)
    count_of_friday_13th += 1 if t.friday?
  end
  count_of_friday_13th
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2

# further exploration
# DAYS_IN_MONTH = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

# def count_fridays(year)
#   leap = leap_year?(year)
#   leap ? DAYS_IN_MONTH[1] = 29 : DAYS_IN_MONTH[1] = 28
#   months_with_five_fridays = 0
#   DAYS_IN_MONTH.each_with_index do |days, index|
#     month = index + 1
#     count_of_fridays = 0
#     (1..days).each do |day|
#       if Time.local(year, month, day).friday?
#         count_of_fridays += 1
#       end
#     end
#     if count_of_fridays == 5
#       months_with_five_fridays += 1
#     end
#   end
#   p months_with_five_fridays
# end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# puts leap_year?(2020)
# puts count_fridays(2020)

require 'date' 

def five_fridays(year)
  start = Date.new(year)
  fridays = (start...start.next_year).select { |date| date.friday? }
  puts fridays
  (1..12).count do |month|
    fridays.count { |date| date.mon == month } == 5
  end
end

puts five_fridays(2020) == 4