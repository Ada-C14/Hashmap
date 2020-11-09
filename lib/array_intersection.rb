# Time Complexity - O(n + m) because it depends on the length of the lists
# Space Complexity - O(n) because the size of the array and hash depend on the length of the lists
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
