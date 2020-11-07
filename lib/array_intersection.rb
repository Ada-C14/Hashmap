def intersection(list1, list2)
  list1_hash = {}
  list1.each do |num|
    list1_hash[num] = 1
  end

  arr = []

  list2.each do |num2|
    arr << num2 if list1_hash[num2]
  end

  return arr
end

#time complexity os O(n+m) where n and m are the length of the list
# space complexity is O(n+m) n space for the hash + m for the array