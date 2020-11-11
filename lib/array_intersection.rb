
def intersection(list1, list2)
  #raise NotImplementedError, "Intersection not implemented"

  lookup_hash = {}
  output = []

  list1.each do |num|
    lookup_hash[num] = false
  end

  list2.each do |num|
    if lookup_hash[num] == false
      output << num
    end
  end

  return output
end
