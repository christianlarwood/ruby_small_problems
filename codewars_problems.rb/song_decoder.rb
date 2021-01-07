=begin
rules: 
  - only single spaces
  - remove leading and trailing spaces

  algorithm:
    - 

=end
def song_decoder(song)
  song.gsub!('WUB',' ')
  song.split.join(' ')
end

p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"
p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") == "WE ARE THE CHAMPIONS MY FRIEND"