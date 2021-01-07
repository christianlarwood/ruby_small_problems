=begin
input: string
output: boolean
algorithm:
  - counter variable assigned to integer 0
  - iterate over each character in the string
    - if "(" then increment counter by 1
    - if ")" then decrement counter by 1
  - counter == 0
=end
def balancer(string)
  counter = 0
  string.chars.each do |char|
    if char == "("
      counter += 1
    elsif char == ")"
      counter -= 1
    end
    return false if counter == -1
  end
  counter == 0
end

p balancer("hi") == true
p balancer("(hi") == false
p balancer("(hi)") == true
p balancer(")hi(") == false
p balancer(")(") == false
p balancer("(())hi") == true