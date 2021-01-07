=begin
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

algorithm:
  - iterate over the array
    - grab the value from each and add it to result variable
    - if array.last then add an ampersand before the name
    - else add a comma

=end
def list(array)
  result = ''
  array.each_with_index do |hash, index|
    if index == 0
      result += hash[:name]
    elsif index == array.size - 1
      result += " & #{hash[:name]}"
    else
      result += ", #{hash[:name]}"
    end
  end
  result
end



p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) #== 'Bart, Lisa & Maggie'

p list([ {name: 'Bart'}, {name: 'Lisa'} ]) #== 'Bart & Lisa'

p list([ {name: 'Bart'} ])# == 'Bart'