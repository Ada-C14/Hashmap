def intersection(list1, list2)
  num_hash = {}
  intersection = []

  list1.each do |num|
    num_hash[num] = nil
  end

  list2.each do |num|
    if num_hash.include?(num)
      intersection << num
    end
  end
  return intersection
end

print intersection([1,2,3,4],[4,5,6])