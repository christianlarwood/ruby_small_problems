=begin
Write method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

algorithm:
  - iterate over the hash
    - if a person's item is not in allowed items, return that person
    - return the key of anyone who's array is not empty

=end
pockets = { 
  bob: [],
  tom: [],
  jane: []
} 

def find_suspects(suspects, allowed_items)
  result = []
  suspects.each do |k, v|
    v.each do |item|
      if !allowed_items.include?(item)
        result << k
      end
    end
  end
  if result.empty?
    return nil
  else
    result.uniq
  end
end

p find_suspects(pockets, [1, 2]) # => [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) # => nil
p find_suspects(pockets, []) # => [:bob, :tom, :jane]
p find_suspects(pockets, [7]) # => [:bob, :tom]