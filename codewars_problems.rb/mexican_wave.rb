def wave(str)
  result = []
  str.chars.each_with_index do |char, index|
    if char =~ /[a-z]/i
      new_word = str[0..-1]
      new_word[index] = new_word[index].upcase!
      result << new_word
    end
  end
  result
end

p wave("hello tom")