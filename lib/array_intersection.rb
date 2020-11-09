# time complexity => O(n + m)
# Space complexity => O(n)
def intersection(list1, list2)
  lookup_hash = {}
  result = []
  list1.each do |num|
    if lookup_hash[num]
      lookup_hash[num] = false
    else
      lookup_hash[num] = true
    end
  end

  list2.each do |num2|
    if lookup_hash[num2]
      result << num2
    end
  end
  return result
end

# p intersection([2, 3, 4], [4, 5, 6])