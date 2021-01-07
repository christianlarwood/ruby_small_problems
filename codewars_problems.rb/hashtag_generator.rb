=begin
rules:
  - must start with a hashtag
  - all words must have first letter capitalized
  - return false if longer than 140 chars or empty string
algorithm:
  - return false if string.empty? || string.size > 140
  - iterate through each word in the string and capitalize it
  - remove all spaces
  - prepend with #



=end
def generateHashtag(string)
  new_string = string.split.map do |word|
    word.capitalize
  end
  return false if new_string.join.size >= 140 || new_string.empty?
  "##{new_string.join}"
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
