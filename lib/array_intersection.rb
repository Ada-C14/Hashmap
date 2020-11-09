def intersection(list1, list2)
  lookup_hash = {}
  results_array = []

  if list1.length >= list2.length
    list2.each do |ele|
      lookup_hash[ele] = true
    end
    list1.each do |ele|
      if lookup_hash[ele]
        results_array << ele
      end
    end

  elsif list1.length < list2.length
    list1.each do |ele|
      lookup_hash[ele] = true
    end
    list2.each do |ele|
      if lookup_hash[ele]
        results_array << ele
      end
    end
  end
  return results_array
end