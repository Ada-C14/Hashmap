def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  hash = {}
  common = []

  list1.each do |item|
    hash[item] = true
  end

  list2.each do |item|
    common << item if hash[item]
  end
  return common
end