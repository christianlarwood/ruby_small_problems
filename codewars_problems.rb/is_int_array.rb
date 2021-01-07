=begin
algorithm:
  - return false if input.class != Array
  - return true if array.empty?
  - return true if array.all { |element| element.to_i == element } or if array.all { |element| element.to_f == element }

=end
def is_int_array(input)
  return false if input.class != Array
  return true if input.empty?
  return true if input.all? { |element| element.to_i == element }
  false
end

p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false