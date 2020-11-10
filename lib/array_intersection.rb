

def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  nums = Hash.new(0)

  list1.each do |num|
    nums[num] += 1
  end

  intersect = []
  list2.each do |num|
    intersect << num if nums.has_key?(num)
  end
  return intersect
end