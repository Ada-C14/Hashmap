# Time complexity: O(n)
# >> O(n) where n is size of iteration array
# >> O(m) where m is size of comparison array

# Space complexity: O(n)
# >> creation of hash (either O(n) or O(m) depending on which array is longer)
# >> creation of return array (worst case O(n) or O(m) if all items one array match the other)

def check_arr(iteration_arr, comp_arr, storage_arr)
  hash = {}
  iteration_arr.each do |item|
    hash[item] = true
  end

  comp_arr.each do |item|
    storage_arr << item if hash[item]
  end
end

def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  intersection = []

  return intersection if list1.empty? || list2.empty?

  if list1.size > list2.size
    check_arr(list1, list2, intersection)
  else
    check_arr(list2, list1, intersection)
  end

  return intersection
end

########################################################

# p intersection([2, 3, 4], [4, 5, 6])
# p intersection([50, 43, 25, 72], [25, 36, 43, 50, 80])
# p intersection([9, 30, 42], [56, 34, 90, 32])