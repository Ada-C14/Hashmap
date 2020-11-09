def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  hash = {}
  intersection_arr = []

  # put each (uniq) number in a hash
  list1.each do |num|
    if hash[num].nil?
      hash[num] = 1
    else
      hash[num] += 1
    end
  end

  # count if the second list contains those uniq nums
  list2.each do |num|
    if hash[num]
      intersection_arr << num
    end
  end

  # return the nums that are in both lists as an array
  return intersection_arr
end