=begin
- initialize an array of english words
- invoke sort_by on array and pass in each integer
  - invoke `[]` on array of english words and pass in num as argument

=end
ENGLISH_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  array.sort_by do |num|
    ENGLISH_WORDS[num]
  end
end


puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]