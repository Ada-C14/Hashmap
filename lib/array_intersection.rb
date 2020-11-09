def intersection(list1, list2)
  shorter_list = (list1.length <= list2.length) ? list1 : list2
  longer_list = (list1.length > list2.length) ? list1 : list2

  #since we're only looking for an intersection, we can compare against values in the shorter list
  hash_table = generate_hash_table(shorter_list)

  longer_list.each do |element|
    if hash_table.include? element
      hash_table[element] += 1
    end
  end

  return hash_table.keep_if { |key, value| value > 1 }.keys
end


def generate_hash_table(list)
  hash_table = {}
  list.each do |element|
    hash_table[element] = 1
  end
  return hash_table
end

