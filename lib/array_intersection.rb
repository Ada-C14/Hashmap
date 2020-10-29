def intersection(list1, list2)
  hash = {}

  list1.each do |integer|
    hash[integer] = true
  end

  union = []
  list2.each do |integer|
    union << integer if hash[integer]
  end

  return union
end