=begin
input: string
output: boolean

algorithm:
  - iterate through each char
  - count how many open "(" +1
  - count how many closed ")" -1
  - if anything other than 0 return false

=end
def balancer(string)
  count = 0
  string.chars.each do |char|
    if char == "("
      count += 1
    elsif char == ")"
      count -= 1
      return false if count == -1
    end
  end
  count == 0
end

p balancer("hi") == true
p balancer("(hi") == false
p balancer("(hi)") == true
p balancer(")hi(") == false
p balancer(")(") == false
p balancer("(())hi") == true