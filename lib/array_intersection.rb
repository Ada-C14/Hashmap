def intersection(list1, list2)
  return [] if list1 == nil || list2 == nil || list1.length == 0 || list2.length == 0

  hash = {}
  if list1.length < list2.length
    list1.each do |element|
      hash[element] = true
    end
  else
    list2.each do |element|
      hash[element] = true
    end
  end

  result = []
  if list1.length < list2.length
    list2.each do |element|
      result << element if hash[element]
    end
  else
    list1.each do |element|
      result << element if hash[element]
    end
  end

  return result
end