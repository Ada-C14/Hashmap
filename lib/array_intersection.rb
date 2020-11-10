def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  hash = {}
  array = []

  list1.each do |x|
    hash[x] = "fog"
  end

  list2.each do |y|
    if hash[y]
      array << y
    end
  end
  return array
end
