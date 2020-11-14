def intersection(list1, list2)
  hash = {}
  intersection = []

  list1.each do |n|
    hash[n] = true
  end
  list2.each do |m|
    if hash[m] #if
      intersection << m
    end
  end
  return intersection
end

#time complexity: O(n)

#intersection([2, 3, 4], [4, 5, 6]) => [4]
# intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]