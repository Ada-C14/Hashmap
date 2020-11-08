def intersection(list1, list2)
  hash_table = {}
  result = []

  list1.each do |num|
    hash_table[num] = true
    # I need help visualizing this. How is this adding to the hash table?
  end

  list2.each do |num|
    if hash_table[num]
      result << num
    end
  end
  return result
end
