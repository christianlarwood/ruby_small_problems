=begin
Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords( "This is a test") => returns "This is a test" spinWords( "This is another test" )=> returns "This is rehtona test"

input: string of words
output: a string of words 

algorithm:
  - initialize a result variable
  - split the string into words
    - iterate over each word
      - if word.length is 5 or more, reverse the order and push to result
      - else push the word to result
  - join and return result


=end