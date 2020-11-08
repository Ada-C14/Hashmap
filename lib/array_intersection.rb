def intersection(list1, list2)
  if list1 == nil || list2 == nil
    return nil
  end

  lookup = {}
  intersection = []

  list1.each do |num|
    lookup[num] = true
  end

  list2.each do |i|
    if lookup[i] == true
      intersection << i
    end
  end
  return intersection
end