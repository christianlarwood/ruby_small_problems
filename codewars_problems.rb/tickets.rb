=begin
The new "Avengers" movie has just been released! There are a lot of people at the cinema box office standing in a huge line. Each of them has a single 100, 50 or 25 dollar bill. An "Avengers" ticket costs 25 dollars.

Vasya is currently working as a clerk. He wants to sell a ticket to every single person in this line.

Can Vasya sell a ticket to every person and give change if he initially has no money and sells the tickets strictly in the order people queue?

Return YES, if Vasya can sell a ticket to every person and give change with the bills he has at hand at that moment. Otherwise return NO.
Examples:

tickets([25, 25, 50]) # => YES 
tickets([25, 100]) # => NO. Vasya will not have enough money to give change to 100 dollars
tickets([25, 25, 50, 50, 100]) # => NO. Vasya will not have the right bills to give 75 dollars of change (you can't make two bills of 25 from one of 50)

Approach:
  - register starts at 0
  - iterate through the array
    - add/subtract from register
    - if register goes below 0 return NO
    - if register > 0 at end of iteration, return YES

Algorithm:
  - initialize a register variable and assign to the first value in the array if the value is 25, else return NO
  - iterate over the array
      - initialize a change_due variable = current element - ticket
    - if current element - ticket > register, return NO
      if element == 25, add to register and move on
    - else add ticket price to register, register - change_due, update register
  - return YES

=end
def tickets(array)
  return "NO" if array.first > 25
  register = array.shift
  ticket_price = 25
  array.each do |number|
    # change_due = number - ticket_price
    if number == 25
      register += ticket_price
    elsif number - ticket_price > register
      return "NO"
    else
      register -= ticket_price
    end
  end
  "YES"
end

p tickets([25, 25, 50]) == "YES"
p tickets([25, 100]) == "NO"
p tickets([25, 25, 50, 50, 100]) == "NO"