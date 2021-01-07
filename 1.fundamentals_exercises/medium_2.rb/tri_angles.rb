=begin
algorithm:
  - invalid triangle: 
    - sum != 180 or a 0
  - right: .count(90) == 1
  - acute: all angles less than 90
  - obtuse: one angle greater than 90

=end
def triangle(angle1, angle2, angle3)
  array = [angle1, angle2, angle3]
  if angle1 + angle2 + angle3 != 180 || array.include?(0)
    :invalid
  elsif array.count(90) == 1
    :right
  elsif angle1 < 90 && angle2 < 90 && angle3 < 90
    :acute
  elsif array.max > 90
    :obtuse
  else
    puts "you missed something"
  end
end



puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid