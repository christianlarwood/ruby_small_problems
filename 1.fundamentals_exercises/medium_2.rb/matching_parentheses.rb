# def balanced?(string)
#   p string.gsub!(/[^()]/, '')
#   if string.size.even?
#     middle = string.size / 2 - 1
#   else
#     middle = string.size / 2
#   end
#   first_half = string[0..middle]
#   second_half = string[middle + 1..-1]
#   first_half.count('(') == second_half.count(')')
# end
# LEFT_CHARS = { p => '[', s => '{', l => '"', v => '(' }
# RIGHT_CHARS = { p => ']', s => '}', l => '"', v => ')' }
CHARS = %w(( ) [ ] { } ' ")

def balanced?(string)
  balance_count = 0
  p CHARS
  string.chars.each do |char|
    if CHARS.include?(char)
      balance_count += 1
    elsif CHARS.include?(char)
      balance_count -= 1
    end
    break if balance_count < 0
  end
  p balance_count
  balance_count == 0
end

puts balanced?('What (is) this?') == true
# puts balanced?('What is) this?') == false
# puts balanced?('What (is this?') == false
# puts balanced?('((What) (is this))?') == true
# puts balanced?('((What)) (is this))?') == false
# puts balanced?('Hey!') == true
# puts balanced?(')Hey!(') == false
# puts balanced?('What ((is))) up(') == false


