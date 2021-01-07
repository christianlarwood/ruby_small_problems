def unique_in_order(iterable)
  result = []
  0.upto(iterable.size - 1) do |index|
    if iterable[index] != iterable[index + 1]
      result << iterable[index]
    end
  end
  result
end

p unique_in_order('AAAABBBCCDAABBB') == ['A','B','C','D','A','B']
p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3])       == [1,2,3]