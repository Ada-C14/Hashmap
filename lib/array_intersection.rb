# Time: O(n+m)
# Space: O(n)
def intersection(list1, list2)
  results = []
  hash_table = { }
  list1.each do |num|                           # Time: O(n)
    hash_table[num] = true                      # is there a complexity associated with this?
  end

  list2.each do |num|                           # Time: O(m)
    if hash_table[num]                          # Time: O(1)
      results.push(num)                         # Space: O(n)
    end
  end
  return results

end