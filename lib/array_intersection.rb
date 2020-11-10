def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  hash = {}
  result = []

  list1.each do |key|
    hash[key] = true
  end

  list2.each do |num|
    if hash[num]
      result << num
    end
  end

  return result
end
