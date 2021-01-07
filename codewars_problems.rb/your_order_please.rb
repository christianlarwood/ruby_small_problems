=begin
Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.

Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.
Examples

"is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
"4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
""  -->  ""

Approach:
  - split the string into words
  - sort the words based on the number in the word
  - return sorted string

Algorithm:
  - split the string into separate words
  - iterate over each word and sort the array of words by the number in each word
  - join the sorted array of words

=end
def sorted(string)
  array = string.split(" ")
  array.sort_by! { |word| word.gsub(/[a-z]/i, '') }.join(' ')
end


p sorted("is2 Thi1s T4est 3a") ==  "Thi1s is2 3a T4est"
p sorted("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
p sorted("")  ==  ""