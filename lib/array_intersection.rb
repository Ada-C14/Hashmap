# Time: O(n+m)
# Space: O(n)
def intersection(list1, list2)
  results = []
  hash_table = { }
  list1.each do |num|                           # Time: O(n)
    hash_table[num] = true                      # lookups - Time: O(1)
  end                                           # Space - at the end of the loop, space is O(n) for this hash

  list2.each do |num|                           # Time: O(m)
    if hash_table[num]                          # lookup - Time: O(1)
      results.push(num)                         # Space: O(n) - at end of loop
    end
  end
  return results

end