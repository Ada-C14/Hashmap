def intersection(list1, list2)
  return [] if list1 == nil || list2 == nil || list1.length == 0 || list2.length == 0

  hash = {}
  list1.each do |element|
    hash[element] = true
  end

  result = []
  list2.each do |element|
    if hash[element].nil? == false
      result << element
    end
  end

  return result

end