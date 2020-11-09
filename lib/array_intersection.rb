def intersection(list1, list2)
  hash = {}
  list1.each { |int| hash[int] = true }

  result = []
  list2.each { |int| result << int if hash[int] }

  return result
end