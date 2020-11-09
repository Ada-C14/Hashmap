def intersection(list1, list2)
  shorter_list = (list1.length <= list2.length) ? list1 : list2
  longer_list = (list1.length > list2.length) ? list1 : list2

  hash_table = generate_hash_table(longer_list)

  shorter_list.each do |element|
    if hash_table.include? element
      hash_table[element] += 1
    end
  end

  return hash_table.keep_if { |key, value| value > 1 }.keys
end

def generate_hash_table(list)
  hash_table = {}
  list.each { |element| hash_table[element] = 1 }
  return hash_table
end

