def intersection(list1, list2)
  return [] unless list1.any? || list2.any?

  overlap = []
  hash = {}

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    if hash[num]
      overlap << num
    end
  end

  return overlap

end