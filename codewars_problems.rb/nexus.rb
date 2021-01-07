=begin
Not to brag, but I recently became the nexus of the Codewars universe! My honor and my rank were the same number. I cried a little.

Complete the method that takes a hash/object/directory/association list of users, and find the nexus: the user whose rank is the closest is equal to his honor. Return the rank of this user. For each user, the key is the rank and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who come closest, return the one with the lowest rank (numeric value). The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.

Example
         rank    honor
users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,    <--- nexus
          23  =>  11,
          30  =>   2 }

algorithm:
  - iterate over the hash
  - store the current delta and rank
    - if the next delta is less than current, replace with new user info
  - return rank of user with the lowest delta
=end
def nexus(hash)
  best_rank = 0
  delta = 0
  hash.each do |k, v|
    if k - v > delta
      delta = k - v
      best_rank = k
    end
  end
  best_rank
end

p nexus({1 => 3, 3 => 3, 5 => 1})# == 3
# p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
# p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2
