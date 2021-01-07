def solve(s) 
  odd_substrings = []
  (0...s.size).each do |start_index|
    (start_index...s.size).each do |end_index|
      if s[start_index..end_index].to_i.odd?
        odd_substrings << s[start_index..end_index]
      end
    end
  end
  odd_substrings.size
end