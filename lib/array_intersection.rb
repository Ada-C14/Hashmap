def intersection(list1, list2)
  result = []
  hash = {}

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    result << num if hash[num]
  end

  return result

end