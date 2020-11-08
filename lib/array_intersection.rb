# time complexity: O(n + m)

def intersection(list1, list2)

  # store list1 elements in a hash with values = true
  hash = {}
  list1.each do |key|
    hash[key] = true
  end

  # check list2 elements against list1 values (true or nil)
  list = []
  list2.each do |element|
    if hash[element] == true
      list << element
    end
  end

  return list
end

