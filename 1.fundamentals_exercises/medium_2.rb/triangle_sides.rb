=begin
- valid triangle: sum of two shortest sides > length of longest side and all sides must be greater than 0 or it's invalid
- equilateral = all sides equal
- isosceles = 2 sides equal, 3rd is different
- scalene = all 3 sides different length
algorithm:
  - conditional statement:
    - check for validity
      - if any side is 0, it's invalid using includes?(0)
      - if sum of 2 shortest sides are < longest using min(2).sum < max
      - return :invalid
    - check for equilateral
      - if all sides are equal length
          array[0] == array[1] == array[2]
      - return :equilateral
    - check for isosceles
      - if array[0] == array[1] || array[1] == array[2]
      - return :isosceles
    - check for scalene
      - if array[0] != array[1] != array[2]
    - else puts "error you missed something"

=end
def triangle(side1, side2, side3)
  array = [side1, side2, side3]
  if array.include?(0) || array.min(2).sum < array.max
    :invalid
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 || side2 == side3
    :isosceles
  elsif side1 != side2 && side2 != side3
    :scalene
  else
    puts "error, you missed something"
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid