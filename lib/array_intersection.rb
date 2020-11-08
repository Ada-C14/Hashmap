def intersection(list1, list2)
  hash = {}
  result = []

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    if hash[num] == true
      result << num
    end
  end

  return result

end