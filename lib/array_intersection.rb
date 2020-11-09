def intersection(list1, list2)
  shorter_list = (list1.length <= list2.length) ? list1 : list2
  longer_list = (list1.length > list2.length) ? list1 : list2

  #since we're only looking for an intersection, we can compare against values in the shorter list
  hash = generate_hash(shorter_list)

  longer_list.each do |element|
    if hash.include? element
      hash[element] += 1
    end
  end

  return hash.keep_if { |key, value| value > 1 }.keys
end


def generate_hash(list)
  hash = {}
  list.each do |element|
    hash[element] = 1
  end
  return hash
end

