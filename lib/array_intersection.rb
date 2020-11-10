# Time Complexity: O(n) - n is larger sized array
# Space complexity - O(n) worst case - n is smaller sized array

def intersection(list1, list2)
  hash = {}
  ans = []

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    ans << num if hash[num]
  end

  return ans

end