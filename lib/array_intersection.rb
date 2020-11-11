# Time Complexity: O(n)
# Space Complexity: O(n)

def intersection(list1, list2)
  result = []
  list2_hash = {}
  list2.each do |element|
    list2_hash[element] = true
  end
  list1.each do |element|
    if list2_hash.key?(element)
      result << element
    end
  end
  return result
end