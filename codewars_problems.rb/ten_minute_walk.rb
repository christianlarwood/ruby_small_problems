def is_valid_walk(walk)
  return false if walk.size > 10
  count = 0
  walk.each do |compass|
    case compass
    when 'n' then count += 1
    when 's' then count -= 1
    when 'w' then count += 1
    when 'e' then count -= 1
    end
  end
  count == 0
end


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false