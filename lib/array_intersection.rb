def intersection(list1, list2)
  #raise NotImplementedError, "Intersection not implemented"
  # loop through both list
  # make a key for the numbers we run into, assign it a value of false
  # when we run into it again, turn it to true
  # return keys the array of all the true values

  lookup_hash = {}

  # shorter answer
  # why this is better : it's not making a new array (list3) that would take up SC
  results_arr = []

  list1.each do |num|
    lookup_hash[num] = true
  end

  list2.each do |num|
    if lookup_hash[num] # if the num is present in hash table
      results_arr << num
    else
      lookup_hash[num] = true
    end
  end

  return results_arr

  # combine the lists
  # list3 = list1 + list2
  #
  # list3.each do |num|
  #   if lookup_hash[num] # if there's a key already
  #     lookup_hash[num] += 1
  #   else
  #     lookup_hash[num] = 0
  #   end
  # end
  #
  # # list2.each do |num|
  # #   if lookup_hash[num] # if there's a key already
  # #     lookup_hash[num] = true
  # #   else
  # #     lookup_hash[num] = false
  # #   end
  # #
  # # end
  #
  # intersection_arr = []
  #
  # lookup_hash.each do |key, value|
  #   if value > 0
  #     intersection_arr << key
  #   end
  # end
  #
  # return intersection_arr

  # list3.each do |num|
  #   return num if lookup_hash[num]
  # end


end