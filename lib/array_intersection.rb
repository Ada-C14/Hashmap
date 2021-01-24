def intersection(list1, list2)
  result = []
  hash = {}

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    if hash[num]
      result << num
    end
  end

  return result


end