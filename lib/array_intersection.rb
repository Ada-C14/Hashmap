def intersection(list1, list2)
  intersecting_numbers = []
  hash = {}

  list1.map do |number|
    hash[number] = false
  end

  list2.each do |number|
    if hash.keys.include? number
      hash[number] = true #guess I don't really need this step
      intersecting_numbers << number
    end
  end

  return intersecting_numbers
end