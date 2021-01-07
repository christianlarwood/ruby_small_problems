=begin
algorithm:
  - initialize a hash
  - downcase and split the string into words/chars 
    - iterate through each word or char
      - count how many times char appears in the string add the key value pair to the hash
  - sort the hash by value
  - return the top 3 results by values

=end
def top_3_words(string)
  results_hash = Hash.new(0)
  return [] if !string.match(/[a-z]/i)
  lowercase_string = string.downcase.gsub(%r([,.:/]), '').split
  lowercase_string.each do |word|
    results_hash[word] = lowercase_string.count(word)
  end
  sorted = results_hash.sort_by { |_, v| v }
  result = []
  sorted.last(3).reverse_each do |subarray|
    result << subarray[0]
  end
  result
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") #== ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //won,t won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
