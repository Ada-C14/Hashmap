def intersection(list1, list2)

  #add all nums of list1 to a hash
  list1_hash = {}
  list1.each do |list1_num|
    list1_hash[list1_num] = true
  end

  #check if each element of list2 is a key in the list1 hash
  output_array = []

  list2.each do |list2_num|
    if list1_hash[list2_num]
      output_array << list2_num
    end
  end

  return output_array
end