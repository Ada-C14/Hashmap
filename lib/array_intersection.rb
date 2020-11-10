def intersection(list1, list2)

  hash = {}
  list1.each do |element|
    hash[element] = true
  end

  result = []
  list2.each do |number|
    if hash[number]
      result << number
    end
  end

  return result
end