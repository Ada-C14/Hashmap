def intersection(list1, list2)
  intersected_value = []
  hash = {}

  list1.each do |integer|
    hash[integer] = true
  end

  list2.each do |number|
    unless hash[number].nil?
      intersected_value << number
    end
  end

  return intersected_value
end