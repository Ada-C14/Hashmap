# time complexity: O(n)
# space complexity: O(n)

def intersection(list1, list2)
  new_hash = {}
  intersections = []

  list1.each do |int|
    new_hash[int] = 1
  end

  list2.each do |num|
    if new_hash.has_key?(num)
      intersections << num
    end
  end

  return intersections
end