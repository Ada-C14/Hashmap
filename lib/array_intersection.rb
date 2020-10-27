def intersection(list1, list2)
  count_hash = {}
  result = []

  list1.each do |number|
    count_hash[number] = true
  end

  list2.each do |number|
    if count_hash[number] == true
      result << number
    end
  end
  
  return result

end
