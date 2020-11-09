def intersection(list1, list2)
  return [] if list1.empty? || list2.empty?

  num_counts = {}
  intersection = []

  list1.each do |num|
    num_counts[num] = true
  end

  list2.each do |num|
    if num_counts[num]
      intersection << num
    end
  end
  return intersection
end
