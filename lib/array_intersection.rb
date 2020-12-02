def intersection(list1, list2)
  intersection = []

  if list1.length < list2.length
    smaller_list = list1
    larger_list = list2
  else
    larger_list = list1
    smaller_list = list2
  end

  lookup = {}
  smaller_list.each do |number|
    lookup[number] = ""
  end

  larger_list.each do |number|
    if lookup.include?(number)
      intersection << number
    end
  end

  return intersection
end
