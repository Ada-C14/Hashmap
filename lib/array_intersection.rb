def intersection(list1, list2)

  new_hash = { }
    list1.each do |num|
        new_hash[num] = true
    end
    intersection = []
    list2.each do |num|
      if new_hash.include?(num)
        intersection << num
      end
    end
    return intersection

end