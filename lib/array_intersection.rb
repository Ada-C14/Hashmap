def intersection(list1, list2)
  result = []
  array_to_hash = Hash.new(0)

  list1.each do |num|
    array_to_hash[num] += 1
  end

  list2.each do |num|
    if array_to_hash.key?(num)
      result << num
    end
  end

  return result
end