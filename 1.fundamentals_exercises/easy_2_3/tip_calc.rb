puts "What is the total bill amount?"
bill_amount = gets.chomp.to_i
puts "What percentage would you like to tip? Enter 15 for 15%"
tip_percentage = gets.chomp.to_i

p converted_tip = (tip_percentage * 0.01).to_f
p total_tip = converted_tip * bill_amount
p bill_total = total_tip + bill_amount

puts "The tip is: $#{format('%02',total_tip)}"
puts "The total is: $#{bill_total}"