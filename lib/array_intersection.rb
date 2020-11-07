def intersection(list1, list2)
  results = []
  # what should the values of this hash table be?
  hash_table = Hash[list1.zip Array.new(list1.length, 0)]   # Time?

  list2.each do |num|                             # Time: O(m)
    if hash_table[num]                          # Time: O(1)
      results.push(num)                         # Space: O(n)?
    end
  end
  return results

end