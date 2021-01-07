def work_on_strings(stra, strb)
  result = ''
  stra.chars.each do |char|
    count_of_char = strb.count(char.downcase)
    if count_of_char.odd?
      result += char.swapcase
    else
      result += char
    end
  end
  strb.chars.each do |char|
    count_of_char = stra.count(char.downcase)
    if count_of_char.odd?
      result += char.swapcase
    else
      result += char
    end
    result
  end
  
  result
end
 p work_on_strings("abg","GgG")
# p work_on_strings("abc","cde") ==  "abCCde"
p work_on_strings("abcdeFgtrzw", "defgGgfhjkwqe") == "abcDeFGtrzWDEFGgGFhjkWqE"
p work_on_strings("abcdeFg", "defgG") == "abcDEfgDEFGg"
# p work_on_strings("abab", "bababa") == "ABABbababa"