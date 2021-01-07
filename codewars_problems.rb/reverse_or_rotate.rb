=begin
Reverse or rotate?
The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz (ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.

Rules:
sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".

Examples:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> "" 
revrot("563000655734469485", 4) --> "0365065073456944"

Rules:
  - cut the string of digits into N digit length strings
    - if a string cannot be length N, ignore it
  - for each substring, if you take the sum of the cubes of its digits and the sum is evenly divisible by 2, reverse the string
      - else rotate to the left, once
  - if n is <= 0 or string is empty, return empty string
  - if n is > string.length, return empty string

Approach:
  - return empty string given rules above
  - get each substring that matches n length
  - iterate over each substring and perform action based on rules
  - return new substring

Algorithm:
    - return empty string given the rules
    - make a copy of the string
    - initialize result array
    - loop
      - invoke slice! on string at n length and add substring to result array
      - break out of loop when slice! returns nil
    - iterate over each substring in result array
      - if the sum of the cubes of its digits and the sum is evenly divisible by 2, reverse the string
        - turn string into integer, split into digits, iterate over each digit and cube each and sum total
        - if true, reverse the string
      - else rotate to the left, once
    - join array and return it

=end
def revrot(string, length)
  return '' if length == 0 || length > string.size
  new_string = string[0...string.size]
  substrings = get_substrings(new_string, length)

  result = ''
  substrings.each do |s|
    cubed_sum = s.to_i.digits.reduce { |sum, digit| sum + (digit**3) }
    if cubed_sum.even?
      result += s.reverse!
    else
      result += s.chars.rotate(1).join
    end
  end
  
  result
end

def get_substrings(new_string, length)
  substrings = []
  while new_string.size > 1
    substring = new_string.slice!(0..length - 1)
    substrings << substring if substring.size == length
  end
  substrings
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
p revrot("563000655734469485", 4) == "0365065073456944"
