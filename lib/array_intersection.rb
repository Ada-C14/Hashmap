def intersection(list1, list2)
  hash = {}
  list1.each do |num|
    hash[num] ? (hash[num] += 1) : hash[num] = 1
  end

    result = []
    list2.each do |num2|
      if hash[num2]
        result << num2
        hash[num2] -= 1
        hash[num2] = nil if hash[num2] == 0
      end
    end

  return result
end